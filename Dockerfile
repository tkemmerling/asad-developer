FROM python:3.11.9-bookworm
# add git lhs to apt
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

# Update and install dependencies
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        software-properties-common sudo git-lfs ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Setup a non-root user 'autogen' with sudo access
# RUN adduser --disabled-password --gecos '' autogen
# RUN adduser autogen sudo
#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#USER autogen
# WORKDIR /home/autogen
#
RUN pip install --upgrade pip
RUN pip install openai
RUN pip install requests
RUN pip install psycopg2-binary
RUN pip install pillow
RUN pip install tiktoken
RUN pip install numpy
RUN pip install pandas matplotlib seaborn scikit-learn requests urllib3 nltk pytest beautifulsoup4
RUN pip install boto3 botocore
RUN pip install arxiv pymupdf wikipedia youtube-transcript-api pytube
RUN pip install anthropic[bedrock] awswrangler black censys datasets dictdiffer dnspython
RUN pip install featuretools flake8 html5lib huggingface_hub human-eval jsonschema mail-parser mistralai networkx
RUN pip install scapy scipy selenium shodan tiktoken tldextract tweepy virustotal3
RUN pip install pyathena pydot pylint pytest
RUN pip install sagemaker
RUN pip install google-cloud-pubsub google-auth google-api-python-client
RUN pip install tenacity termcolor youtube_transcript_api
RUN pip install pyautogen
RUN pip install ffmpeg-python
RUN pip install EbookLib lxml reportlab
RUN pip install PyPDF2
RUN pip install jupyter
RUN pip install fuzzywuzzy pyusps pygeocoder usaddress
RUN pip install pinecone-client
RUN pip install validators
RUN pip install litellm[proxy]
RUN pip install yt-dlp[default]
RUN pip install pymemgpt
RUN pip install xmltodict
RUN pip install markdown


# Expose port
EXPOSE 8081
EXPOSE 4000

# Start Command
CMD ["/bin/bash"]
