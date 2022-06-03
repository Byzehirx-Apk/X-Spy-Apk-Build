.class public interface abstract Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract forgetAccountName()V
.end method

.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method
