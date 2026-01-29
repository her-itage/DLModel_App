FROM tensorflow/serving:latest

COPY ./models /models

EXPOSE 8501

CMD ["tensorflow_model_server", "--rest_api_port=8501", "--model_name=digit_classifier", "--model_base_path=/models/digit_classifier"]