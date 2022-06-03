.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
.super Lcom/bumptech/glide/load/model/StringLoader;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/StringLoader",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    const-class v3, Landroid/net/Uri;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
    move-object v1, p1

    .local v1, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/StringLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method
