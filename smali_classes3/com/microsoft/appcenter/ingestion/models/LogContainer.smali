.class public Lcom/microsoft/appcenter/ingestion/models/LogContainer;
.super Ljava/lang/Object;
.source "LogContainer.java"


# instance fields
.field private logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 42
    const/4 v3, 0x1

    move v0, v3

    .line 48
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    :goto_0
    return v0

    .line 44
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
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

    .line 45
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 47
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    move-object v2, v3

    .line 48
    .local v2, "container":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLogs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLogs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v1, p1

    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->logs:Ljava/util/List;

    .line 36
    return-void
.end method
