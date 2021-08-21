FROM python:3 as builder
COPY . .
WORKDIR /
RUN pip3 install mkdocs mkdocs-material markdown pymdown-extensions
RUN pip3 install https://github.com/bmcorser/fontawesome-markdown/archive/master.zip
RUN pip3 install markdown-include mkdocs-git-revision-date-localized-plugin mkdocs-autolinks-plugin
FROM builder as prod
ENV HOST=0.0.0.0
EXPOSE 8000
