.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to /sdcard/Kodular/data to facilitate debugging. If the file path starts with a slash (/), then the file is created relative to /sdcard. For example writing a file to /myFile.txt will write the file in /sdcard/myFile.txt."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "zip4j.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# instance fields
.field private legacy:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/File;->LegacyMode(Z)V

    .line 77
    return-void
.end method

.method private AbsoluteFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x0

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 456
    :goto_0
    return-object v0

    .line 448
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplDataPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 453
    :goto_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 456
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 451
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method private AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 566
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v6

    .line 567
    new-instance v6, Ljava/io/StringWriter;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    move-object v3, v6

    .line 568
    const/16 v6, 0x1000

    new-array v6, v6, [C

    move-object v4, v6

    .line 571
    :goto_0
    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    move v14, v6

    move v6, v14

    move v7, v14

    move v5, v7

    if-lez v6, :cond_0

    .line 572
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 581
    :cond_0
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/File;->normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 583
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v7, Lcom/google/appinventor/components/runtime/File$7;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/File$7;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    .line 599
    :goto_1
    return-void

    .line 589
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 590
    const-string/jumbo v6, "FileComponent"

    const-string/jumbo v7, "FileNotFoundException"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 591
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    const-string/jumbo v8, "ReadFrom"

    const/16 v9, 0x835

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 597
    goto :goto_1

    .line 593
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 594
    const-string/jumbo v6, "FileComponent"

    const-string/jumbo v7, "Exception"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 595
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    const-string/jumbo v8, "ReadFrom"

    const/16 v9, 0x836

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 599
    goto :goto_1
.end method

.method private Write(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v1

    const-string/jumbo v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    move v5, v3

    if-eqz v5, :cond_0

    .line 471
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "AppendTo"

    const/16 v8, 0x83a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 539
    :goto_0
    return-void

    .line 474
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "SaveFile"

    const/16 v8, 0x83a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 477
    goto :goto_0

    .line 479
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    move v4, v5

    .line 480
    new-instance v5, Lcom/google/appinventor/components/runtime/File$5;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    move v10, v3

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object v1, v5

    .line 528
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v7, Lcom/google/appinventor/components/runtime/File$6;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/File$6;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/Runnable;Z)V

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 539
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/File;->AbsoluteFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/File;->AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private getJavaFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/File;->AbsoluteFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "\r\n"

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterFileSaved"

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

    .line 252
    return-void
.end method

.method public AfterUnzip()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the zip file have been created."
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AfterUnzip"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 356
    return-void
.end method

.method public AfterZip()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the zip file have been created."
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AfterZip"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 351
    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 139
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public Copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Copy a file. If input path started with two // (slashes) then it\'s a asset file. You can not copy a file into the assets directory."
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    move v3, v4

    .line 262
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v6, Lcom/google/appinventor/components/runtime/File$3;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move v10, v3

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 285
    return-void
.end method

.method public CreateDirectory(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new directory."
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v4, Lcom/google/appinventor/components/runtime/File$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 430
    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    move v2, v3

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v5, Lcom/google/appinventor/components/runtime/File$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 232
    return-void
.end method

.method public DirectoryCreated(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that there was a directory created. The return value is \'true\' or \'false\'."
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "DirectoryCreated"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 436
    return-void
.end method

.method public Exists(Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether a file exists. If file path started with two // (slashes) then it means you would check if a asset file exists."
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    move-object v2, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 291
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    move v0, v2

    .line 308
    :goto_0
    return v0

    .line 298
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    .line 304
    const-string/jumbo v2, "FileComponent"

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 299
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    const-string/jumbo v2, "FileComponent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 302
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v2

    move-object v1, v2

    const-string/jumbo v2, "FileComponent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 305
    move-object v2, v1

    throw v2

    .line 308
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public FileSize(Ljava/lang/String;)J
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get file size"
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 315
    move-object v1, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v0, v2

    .line 318
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public GetFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get file name"
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetFreeSpace(Ljava/lang/String;)J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Free Space"
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public GetTotalSpace(Ljava/lang/String;)J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get total space"
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotText"

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

    .line 242
    return-void
.end method

.method public IsDirectory(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the path is a directory"
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 345
    move-object v1, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public IsFile(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the path is a file"
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 339
    move-object v1, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public LegacyMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 84
    return-void
.end method

.method public LegacyMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    move v0, v1

    return v0
.end method

.method public Move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move a file. You can not move asset files."
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/File;->getJavaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public OnZipFailure(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that there was any failure on zip or unzip a file."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnZipFailure"

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

    .line 361
    return-void
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    move v2, v3

    .line 158
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v5, Lcom/google/appinventor/components/runtime/File$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 195
    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 122
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public Unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unzip a file with or without a password. If you dont need a passwort then let it empty."
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    new-instance v4, Lnet/lingala/zip4j/core/ZipFile;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 397
    move-object v1, v5

    invoke-virtual {v4}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 400
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 401
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/File;->AfterUnzip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .line 406
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 403
    const-string/jumbo v4, "FileComponent"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 404
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/File;->OnZipFailure(Ljava/lang/String;)V

    .line 406
    goto :goto_0
.end method

.method public Zip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a zip file with or without a password."
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    new-instance v5, Lnet/lingala/zip4j/model/ZipParameters;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 368
    move-object v4, v6

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 369
    move-object v5, v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 371
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 372
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 373
    move-object v5, v4

    const/16 v6, 0x63

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 374
    move-object v5, v4

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 375
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword(Ljava/lang/String;)V

    .line 378
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/core/ZipFile;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 380
    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 381
    move-object v1, v6

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 386
    :cond_1
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/File;->AfterZip()V

    .line 390
    .line 391
    :goto_1
    return-void

    .line 383
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 388
    const-string/jumbo v5, "FileComponent"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 389
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/File;->OnZipFailure(Ljava/lang/String;)V

    .line 391
    goto :goto_1
.end method
