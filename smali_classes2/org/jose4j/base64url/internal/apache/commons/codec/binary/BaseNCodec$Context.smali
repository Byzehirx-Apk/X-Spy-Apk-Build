.class Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# instance fields
.field buffer:[B

.field currentLinePos:I

.field eof:Z

.field ibitWorkArea:I

.field lbitWorkArea:J

.field modulus:I

.field pos:I

.field readPos:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    const-string/jumbo v2, "%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v1

    iget-object v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    move-object v6, v1

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    move-object v6, v1

    iget-boolean v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    move-object v6, v1

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    move-object v6, v1

    iget-wide v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x6

    move-object v6, v1

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    move-object v6, v1

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    move-object v6, v1

    iget v6, v6, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    return-object v1
.end method
