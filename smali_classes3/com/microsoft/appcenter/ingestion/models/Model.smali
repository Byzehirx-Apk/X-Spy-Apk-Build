.class public interface abstract Lcom/microsoft/appcenter/ingestion/models/Model;
.super Ljava/lang/Object;
.source "Model.java"


# virtual methods
.method public abstract read(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract write(Lorg/json/JSONStringer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
