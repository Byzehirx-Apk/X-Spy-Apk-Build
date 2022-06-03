.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 295
    move-object v1, v0

    new-instance v2, Landroidx/collection/SparseArrayCompat;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 296
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    sget-object v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-object v0, v1

    .end local v0    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object/from16 v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v8}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 355
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string/jumbo v9, "Loaders:"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 357
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 358
    move-object v8, v0

    iget-object v8, v8, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v7, v8

    .line 359
    .local v7, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    const-string/jumbo v9, "  #"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    move-object v8, v3

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    move-object v8, v7

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v5    # "innerPrefix":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    return-void
.end method

.method finishCreatingLoader()V
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 308
    return-void
.end method

.method getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v0, v2

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    return-object v0
.end method

.method hasRunningLoaders()Z
    .locals 6

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    move v1, v4

    .line 325
    .local v1, "size":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "index":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 326
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v3, v4

    .line 327
    .local v3, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const/4 v4, 0x1

    move v0, v4

    .line 331
    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .end local v3    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :goto_1
    return v0

    .line 325
    .restart local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .restart local v3    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v3    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method isCreatingLoader()Z
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    move v0, v1

    .end local v0    # "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    return v0
.end method

.method markForRedelivery()V
    .locals 6

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    move v1, v4

    .line 336
    .local v1, "size":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "index":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 337
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v3, v4

    .line 338
    .local v3, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v4, v0

    invoke-super {v4}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 345
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    move v1, v4

    .line 346
    .local v1, "size":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "index":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 347
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-object v3, v4

    .line 348
    .local v3, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    move-result-object v4

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v3    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 351
    return-void
.end method

.method putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 6
    .param p2    # Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method removeLoader(I)V
    .locals 4

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 321
    return-void
.end method

.method startCreatingLoader()V
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 300
    return-void
.end method
