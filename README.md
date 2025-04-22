# AvaDaniel_EECE5698
Repository for EECE5698 Final Project, Ava Giorgianni and Daniel Klevak


Classical Method file structure breakdown:
The classical method is contained in the matlab file FinalProject_IPP.m. This loops through all images in the DevImages folder for processing. 
Results from the classical method are stored in the Outputs folder. This folder contains subplots of each step in the image processing pipeline for each image as well as an excel sheet containing a sheet for each image. Each sheet contains the major and minor axial measurements of each identified cell in the image.  


ML Method file structure breakdown:
The code for the YOLO object recognition based image processing pipeline is in the file cell_image_processing.ipynb which sits directly in the ML Method folder

The ML method folder also contains the folder content, which has all of the inputs into and outputs produced by the pipeline. 

The runs/detect folder contains the results of training in the folder train, this folder contains model performence metrics as well as the bounding boxes overlayed on cells from the train set. The folder also has train2 and train3, which are duplicates. They contain the bounding boxes on images in the validation set. 

The yolo_dataset folder contains an images folder with sub folders train and val which were split randomly in the pipeline. It also has folders for the labels and masks which were extracted from these images to train the model. 

cell_measurements.csv contains the measurements of all cells detected across the entire validation set. 

dataset.yaml breaksdown the parameters for the yolo model, defining paths for the train and val split as well as defining the singular class we have which is cell. 


Ground Truth file structure breakdown:
