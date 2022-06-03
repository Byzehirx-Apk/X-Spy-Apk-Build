.class public Lorg/jose4j/jwt/consumer/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final AUDIENCE_INVALID:I = 0x8

.field public static final AUDIENCE_MISSING:I = 0x7

.field public static final ENCRYPTION_MISSING:I = 0x13

.field public static final EXPIRATION_MISSING:I = 0x2

.field public static final EXPIRATION_TOO_FAR_IN_FUTURE:I = 0x5

.field public static final EXPIRED:I = 0x1

.field public static final INTEGRITY_MISSING:I = 0x14

.field public static final ISSUED_AT_INVALID_FUTURE:I = 0x17

.field public static final ISSUED_AT_INVALID_PAST:I = 0x18

.field public static final ISSUED_AT_MISSING:I = 0x3

.field public static final ISSUER_INVALID:I = 0xc

.field public static final ISSUER_MISSING:I = 0xb

.field public static final JSON_INVALID:I = 0x10

.field public static final JWT_ID_MISSING:I = 0xd

.field public static final MALFORMED_CLAIM:I = 0x12

.field public static final MISCELLANEOUS:I = 0x11

.field public static final NOT_BEFORE_MISSING:I = 0x4

.field public static final NOT_YET_VALID:I = 0x6

.field public static final SIGNATURE_INVALID:I = 0x9

.field public static final SIGNATURE_MISSING:I = 0xa

.field public static final SUBJECT_INVALID:I = 0xf

.field public static final SUBJECT_MISSING:I = 0xe

.field public static final TYPE_INVALID:I = 0x16

.field public static final TYPE_MISSING:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodes;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
