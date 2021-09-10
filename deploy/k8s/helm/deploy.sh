#!/usr/bin/env bash

helm install yup-webgateway-api -n yup --set ingress.tls[0].secretName=yup-secret --set ingress.tls[0].hosts[0]=yupgwk8s.yup.net.pe --set "ingress.hosts={yupgwk8s.yup.net.pe}" --set app.name=yup --set inf.k8s.dns=localhost --set image.tag=latest --set image.pullPolicy=Always --values app.yaml --values inf.yaml --debug --dry-run webgateway-api