The Food10k Dataset
===================

FAIR USE STATEMENT:This dataset contains copyrighted material under
the educational fair use exemption to the U.S. copyright law.

What's included?
----------------

- 10,000 Yummly IDs of foods, handpicked to contain only one cuisine.
  Please see [our site][companionsite] for details. This file is in
  `dataset.json` and contains the following keys:
  - `images_uuids`: A list of internal UUIDs for each image
  - `uuid_to_url`: A mapping from internal UUID to Yummly-hosted URLs for these images
  - `uuid_to_yummly_id`: A mapping from internal UUIDs to Yummly IDs, if you wish to use the [Yummly API](https://developer.yummly.com/) to collect metadata
  - `sets`, the raw results of our Mechanical Turk task to sample triplets. See the [Cost-effective Hits][cost-effective-hits] paper for more details on the crowdsourcing process.

- A file containing all inferred triplet constraints, `./all-triplets.txt`,
  `all-triplets.csv`. This file contains 958,479 triplet constraints,
  which represents a very miniscule fraction (`2.17e-12`) of the total
  number of constraints we could sample (`958479 * 958478 * 958477 / 2`).

- `features.npy`, containing extracted CNN features from `Food Kernel
  2` in [our paper][companionsite]. The `i`th row corresponds to image `load("dataset.json")["images_uuids"][i]`.

[companionsite]: http://vision.cornell.edu/se3/projects/concept-embeddings/
[cost-effective-hits]: http://arxiv.org/abs/1404.3291
