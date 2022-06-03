.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;
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
        "Ljava/lang/Integer;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "factories":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    new-instance v3, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v2

    const-class v7, Landroid/net/Uri;

    const-class v8, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;
    return-object v0
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
