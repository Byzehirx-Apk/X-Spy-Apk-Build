.class public Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory",
        "<",
        "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
        ">;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    new-instance v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Model;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;->create()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    return-object v0
.end method

.method public createList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    move v1, p1

    .local v1, "capacity":I
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;
    return-object v0
.end method
