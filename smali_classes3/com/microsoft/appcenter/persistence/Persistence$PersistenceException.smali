.class public Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
.super Ljava/lang/Exception;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/persistence/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistenceException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
    move-object v1, p1

    .local v1, "detailMessage":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
    move-object v1, p1

    .local v1, "detailMessage":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method
