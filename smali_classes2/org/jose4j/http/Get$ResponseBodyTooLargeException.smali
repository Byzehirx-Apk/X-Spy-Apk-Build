.class Lorg/jose4j/http/Get$ResponseBodyTooLargeException;
.super Ljava/io/IOException;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/http/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseBodyTooLargeException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get$ResponseBodyTooLargeException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 350
    return-void
.end method
