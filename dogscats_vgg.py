import torch
import torch.nn as nn
import torchvision.transforms as transforms
from torchvision.datasets.folder import ImageFolder

path = "./data/dogscats/sample/"

batch_size=4

transform = transforms.Compose([
    transforms.Scale((224, 224)),
    transforms.ToTensor()
])

train_dataset = ImageFolder(path + 'train', transform=transform)
train_loader = torch.utils.data.DataLoader(dataset=train_dataset,
                                           batch_size=batch_size,
                                           shuffle=True,
                                           num_workers=2)

# When iteration starts, queue and thread start to load dataset from files.
data_iter = iter(train_loader)

# Mini-batch images and labels.
images, labels = data_iter.next()