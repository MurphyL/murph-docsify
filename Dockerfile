FROM murphyl/nodejs

WORKDIR "/usr/murph"

RUN npm i docsify-cli -g; \
	docsify init ./docsify --local --theme vue;

COPY ./web/* ./docsify/

ENTRYPOINT [ "sh", "-c", "cp -rf ./${OFFICE}/* ./docsify && docsify start ./docsify --port 5000" ]