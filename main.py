import os
import openai

# Set your OpenAI API key
openai.api_key = os.getenv("OPENAI_API_KEY")

user_prompt = input("Write your prompt for DALL-E 2: ")

response = openai.Image.create(
    prompt=user_prompt,
    n=1,
    size="1024x1024"
)

# Loop through the 'data' list and print each 'url'
for image_data in response['data']:
    image_url = image_data['url']
    print(image_url)