# rekognize

CLI to the [AWS Rekognition API](https://aws.amazon.com/rekognition/).

## usage

```
AWS_ACCESS_KEY_ID=xxxx AWS_SECRET_ACCESS_KEY=xxxx node . image.jpg
```

```
{
  "Labels": [
    {
      "Name": "Human",
      "Confidence": 99.29070281982422
    },
    {
      "Name": "People",
      "Confidence": 99.29415130615234
    },
    {
      "Name": "Person",
      "Confidence": 99.29415130615234
    },
    {
      "Name": "Shorts",
      "Confidence": 85.93860626220703
    },
    {
      "Name": "Apparel",
      "Confidence": 50.69576644897461
    },
    {
      "Name": "Clothing",
      "Confidence": 50.69576644897461
    },
    {
      "Name": "Plant",
      "Confidence": 50.601470947265625
    }
  ],
  "OrientationCorrection": "ROTATE_0"
}
```
