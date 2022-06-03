.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Ljava/io/File;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Ljava/io/File;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "factories":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    new-instance v3, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;
    return-object v0
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
