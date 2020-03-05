# img-resizer
An action for resizing images according to the given resolution for resizing , the folder of original images and the output folder for resized images.

To use this action add following to your workflow file

```yml
- name: Image Resizer Action
  uses: sharadcodes/img-resizer@v1.0
  with:
    image-folder: 'my_images' # This is a Required field & this folder has original images
    new-resolution: '400x200' #This is Required field
    output-folder: "my_resized_images" # This is Required field & this folder will be used to store resized images
```
