FROM zewo/docker:0.2.1

ENV APP_NAME=Zewo
ENV BUILD_CONFIGURATION=debug

WORKDIR /$APP_NAME/

ADD Package.swift /$APP_NAME/
ADD Sources /$APP_NAME/Sources
ADD Public /$APP_NAME/Public

RUN swift build -c $BUILD_CONFIGURATION

EXPOSE 8080

CMD /$APP_NAME/.build/$BUILD_CONFIGURATION/$APP_NAME