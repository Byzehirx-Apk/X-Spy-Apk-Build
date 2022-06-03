.class public Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Storage"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-auth.jar",
        "firebase-auth.aar",
        "firebase-auth-interop.jar",
        "firebase-auth-interop.aar",
        "firebase-core.jar",
        "firebase-core.aar",
        "firebase-common.jar",
        "firebase-common.aar",
        "firebase-storage.jar",
        "firebase-storage.aar",
        "firebase-storage-common.jar",
        "firebase-storage-common.aar",
        "play-services-auth.jar",
        "play-services-auth.aar",
        "play-services-auth-api-phone.jar",
        "play-services-auth-api-phone.aar",
        "play-services-auth-base.jar",
        "play-services-auth-base.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-flags.jar",
        "play-services-flags.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/FirebaseStorage;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 76
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->context:Landroid/content/Context;

    .line 77
    move-object v2, v0

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/FirebaseStorage;

    .line 78
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    .line 79
    return-void
.end method


# virtual methods
.method public DeleteFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be deleted"
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "DeleteFailed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 235
    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to delete a file from Firebase Storage"
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$7;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$6;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 163
    return-void
.end method

.method public DeleteSuccess(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully deleted"
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "DeleteSuccess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 230
    return-void
.end method

.method public DownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be downloaded"
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "DownloadFailed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 225
    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to download a file from Firebase Storage"
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    move-object v3, v5

    .line 125
    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 126
    move-object v4, v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "Could not create a folder to store the download"

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->DownloadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 146
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    new-instance v8, Ljava/io/File;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 135
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/StorageReference;->getFile(Ljava/io/File;)Lcom/google/firebase/storage/FileDownloadTask;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/FileDownloadTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$4;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v5

    .line 146
    goto :goto_0
.end method

.method public DownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully downloaded"
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "DownloadSuccess"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 220
    return-void
.end method

.method public GetBucket()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of the Storage Bucket"
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getBucket()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public PauseDownloads()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause all the active downloads"
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getActiveDownloadTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/FileDownloadTask;

    .line 185
    invoke-virtual {v2}, Lcom/google/firebase/storage/FileDownloadTask;->pause()Z

    move-result v2

    .line 186
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public PauseUploads()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause all the active uploads"
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getActiveUploadTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/UploadTask;

    .line 169
    invoke-virtual {v2}, Lcom/google/firebase/storage/UploadTask;->pause()Z

    move-result v2

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public ResumeDownloads()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume all the active downloads"
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getActiveDownloadTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/FileDownloadTask;

    .line 193
    invoke-virtual {v2}, Lcom/google/firebase/storage/FileDownloadTask;->resume()Z

    move-result v2

    .line 194
    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public ResumeUploads()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume all the active uploads"
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getActiveUploadTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/UploadTask;

    .line 177
    invoke-virtual {v2}, Lcom/google/firebase/storage/UploadTask;->resume()Z

    move-result v2

    .line 178
    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public UploadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be uploaded"
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "UploadFailed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 210
    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to upload a file to Firebase Storage"
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 85
    new-instance v6, Ljava/io/FileInputStream;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 87
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v6

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    .line 88
    move-object v5, v7

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/StorageReference;->putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v6

    .line 90
    new-instance v7, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/UploadTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$2;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$2;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 118
    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 117
    move-object v6, v0

    move-object v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    goto :goto_0
.end method

.method public UploadProgress(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file upload progress changed"
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object v7, v0

    const-string/jumbo v8, "UploadProgress"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move-wide v12, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    move-wide v12, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    .line 215
    return-void
.end method

.method public UploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully uploaded"
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "UploadSuccess"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 205
    return-void
.end method
