. common.sh
ROLE_NAME=supervise
TRUST_POLICY=supervisor
POLICY_FILE=$(create_trust_policy $TRUST_POLICY)

aws iam create-role --role-name $ROLE_NAME --assume-role-policy-document file:///$POLICY_FILE

aws iam attach-role-policy --role-name $ROLE_NAME --policy-arn arn:aws:iam::aws:policy/IAMFullAccess


