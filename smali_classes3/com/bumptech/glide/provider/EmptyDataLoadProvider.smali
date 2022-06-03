.class public Lcom/bumptech/glide/provider/EmptyDataLoadProvider;
.super Ljava/lang/Object;
.source "EmptyDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;-><init>()V

    sput-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-object v0
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    return-object v0
.end method
