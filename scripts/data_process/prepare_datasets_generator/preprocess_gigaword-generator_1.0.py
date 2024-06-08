"""
Preprocess the dataset by adding noisy key phrase prompt
k_1.0: Key phrase prompt generated by the KP generation model
"""
import json
import jsonlines

base_path = '../recsum_/data/gigaword/'


def process_kps(kps):
    if kps.endswith(';'):
        kps = kps[:-1]
    kps = list(set(kps.split(';')))
    return kps


def process_title(title):
    if ' : People.com' in title:
        title = title.replace(' : People.com', '')
    if '- NYTimes.com' in title:
        title = title.replace(' - NYTimes.com', '')
    return title


def process_text(text):
    text = text.replace('\n', ' ')
    return text


if __name__ == "__main__":
    for split in ['train', 'valid']:
        with open(base_path + 'kp_1.0/%s-id2headlinekps.json' % split) as f:
            id2title_kps = json.load(f)
        recs = []
        with open(base_path + '%s.jsonl' % split) as json_file:
            with jsonlines.open(base_path + 'kp_1.0/%s.jsonl' % split, mode='w') as writer:
                for line in json_file:
                    info = json.loads(line)
                    idx = info['id']
                    title = process_title(info['headline'])
                    text = process_text(' '.join(info['text']))
                    title_kps = process_kps(id2title_kps[idx])
                    _ = writer.write({'text': '; '.join(title_kps) + '</s> ' + text, 'title': title})




                # text_kps = process_kps(url2text_kps[url])
                # recs.append({'text': '; '.join(title_kps) + '</s> ' + text, 'title': title})
    # print('Writing files')
    # with open('../recsum_/data/gigaword/%s-k_1.0.json' % split, 'w') as f:
    #     info_all = {
    #         'version': 'K-1.0',
    #         'data': recs
    #     }
    #     json.dump(info_all, f)


# with open('../recsum_/dump/nr-pt-3.0/args.pkl', 'rb') as f:
#     args = pickle.load(f)
#     args.source_prefix = ''
#     args.summarizer_model_path = '/cephfs/data/huggingface_models/facebook/bart-large'
#
# # Tokenize the dataset
# summarizer, tokenizer = load_summarizer_naive(args)
# # model = SummarizerPreTrain(args, summarizer, tokenizer)
# data_files_summ = {}
# data_files_summ["train"] = '../recsum_/data/gigaword/train-k_1.0.json'
# data_files_summ["validation"] = '../recsum_/data/gigaword/valid-k_1.0.json'
#
# extension = data_files_summ[list(data_files_summ.keys())[0]].split(".")[-1]
# raw_datasets_summ = load_dataset(extension, data_files=data_files_summ, field='data')
# datasets_summ = {}
# for split in raw_datasets_summ:
#     datasets_summ[split] = DatasetSumm(args, raw_datasets_summ[split], tokenizer, 'cache-%s-k_1.0' % split)




# pass
# base_path = '../recsum_/data/gigaword/'
# for split in ['train', 'valid']:
#     with open(base_path + 'kp_1.0/%s-id2headlinekps.json' % split) as f:
#         id2title_kps = json.load(f)
#     recs = []
#     with open(base_path + '%s.jsonl' % split) as json_file:
#         with jsonlines.open(base_path + 'kp_1.0/%s.jsonl' % split, mode='w') as writer:
#             for i, line in enumerate(json_file):
#                 info = json.loads(line)
#                 idx = info['id']
#                 title = process_title(info['headline'])
#                 text = process_text(' '.join(info['text']))
#                 title_kps = process_kps(id2title_kps[idx])
#                 _ = writer.write({'text': '; '.join(title_kps) + '</s> ' + text, 'title': title})
#                 if i > 5000:
#                     break


