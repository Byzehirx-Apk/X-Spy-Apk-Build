.class public interface abstract Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;
.super Ljava/lang/Object;
.source "ModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/microsoft/appcenter/ingestion/models/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/microsoft/appcenter/ingestion/models/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public abstract createList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end method
