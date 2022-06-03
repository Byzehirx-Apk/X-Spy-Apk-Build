.class public abstract Lcom/microsoft/appcenter/persistence/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
    }
.end annotation


# instance fields
.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/Persistence;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearPendingLogState()V
.end method

.method public abstract countLogs(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteLogs(Ljava/lang/String;)V
.end method

.method public abstract deleteLogs(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/Persistence;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/Persistence;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "logSerializer not configured"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/Persistence;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/Persistence;
    return-object v0
.end method

.method public abstract getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x2L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
        }
    .end annotation
.end method

.method public setLogSerializer(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V
    .locals 4
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/Persistence;
    move-object v1, p1

    .local v1, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/persistence/Persistence;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 102
    return-void
.end method

.method public abstract setMaxStorageSize(J)Z
.end method
