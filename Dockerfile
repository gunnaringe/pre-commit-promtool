FROM prom/prometheus AS prometheus

FROM alpine
COPY --from=prometheus /bin/promtool /bin/promtool
COPY check-rules.sh /bin/check-rules.sh

RUN apk add --no-cache yq bash

CMD ["promtool"]
