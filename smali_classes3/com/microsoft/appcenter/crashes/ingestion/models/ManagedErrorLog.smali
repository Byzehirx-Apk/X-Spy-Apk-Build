.class public Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
.super Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
.source "ManagedErrorLog.java"


# static fields
.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final THREADS:Ljava/lang/String; = "threads"

.field public static final TYPE:Ljava/lang/String; = "managedError"


# instance fields
.field private exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

.field private threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 109
    const/4 v3, 0x1

    move v0, v3

    .line 121
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    :goto_0
    return v0

    .line 111
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 112
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 114
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 115
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 117
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v2, v3

    .line 118
    .local v2, "that":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 119
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 118
    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-nez v3, :cond_4

    .line 121
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    return-object v0
.end method

.method public getThreads()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    const-string/jumbo v1, "managedError"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 127
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 128
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 129
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    return v0

    .line 127
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->read(Lorg/json/JSONObject;)V

    .line 85
    move-object v4, v1

    const-string/jumbo v5, "exception"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    move-object v4, v1

    const-string/jumbo v5, "exception"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v2, v4

    .line 87
    .local v2, "jException":Lorg/json/JSONObject;
    new-instance v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    move-object v3, v4

    .line 88
    .local v3, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->read(Lorg/json/JSONObject;)V

    .line 89
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 91
    .end local v2    # "jException":Lorg/json/JSONObject;
    .end local v3    # "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "threads"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readArray(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setThreads(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    .line 62
    return-void
.end method

.method public setThreads(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "threads":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->threads:Ljava/util/List;

    .line 80
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->write(Lorg/json/JSONStringer;)V

    .line 97
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v1

    const-string/jumbo v3, "exception"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->write(Lorg/json/JSONStringer;)V

    .line 100
    move-object v2, v1

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 102
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "threads"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getThreads()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    return-void
.end method
