#!/bin/bash

oc secrets add serviceaccount/demo-sa secret/mysecrets

oc describe serviceaccount demo-sa
