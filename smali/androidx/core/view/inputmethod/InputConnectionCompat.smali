.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputConnectionCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 16
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object/from16 v0, p0

    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v1, p1

    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v2, p2

    .local v2, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move/from16 v3, p3

    .local v3, "flags":I
    move-object/from16 v4, p4

    .local v4, "opts":Landroid/os/Bundle;
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    move-object v5, v11

    .line 100
    .local v5, "description":Landroid/content/ClipDescription;
    const/4 v11, 0x0

    move v6, v11

    .line 101
    .local v6, "supported":Z
    move-object v11, v1

    invoke-static {v11}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_0
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_0

    move-object v11, v7

    move v12, v9

    aget-object v11, v11, v12

    move-object v10, v11

    .line 102
    .local v10, "mimeType":Ljava/lang/String;
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 103
    const/4 v11, 0x1

    move v6, v11

    .line 107
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_0
    move v11, v6

    if-nez v11, :cond_2

    .line 108
    const/4 v11, 0x0

    move v0, v11

    .line 122
    .end local v0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return v0

    .line 101
    .restart local v0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 111
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x19

    if-lt v11, v12, :cond_3

    .line 112
    move-object v11, v0

    move-object v12, v2

    .line 113
    invoke-virtual {v12}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputContentInfo;

    move v13, v3

    move-object v14, v4

    .line 112
    invoke-interface {v11, v12, v13, v14}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v11

    move v0, v11

    goto :goto_1

    .line 115
    :cond_3
    new-instance v11, Landroid/os/Bundle;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v7, v11

    .line 116
    .local v7, "params":Landroid/os/Bundle;
    move-object v11, v7

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    move-object v11, v7

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    move-object v11, v7

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    move-object v11, v7

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    move-object v11, v7

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    move-object v11, v0

    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    move-object v13, v7

    invoke-interface {v11, v12, v13}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v11

    move v0, v11

    goto :goto_1
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 11
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    move-object v1, p1

    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move-object v2, p2

    .local v2, "onCommitContentListener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 195
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "inputConnection must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 197
    :cond_0
    move-object v5, v1

    if-nez v5, :cond_1

    .line 198
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "editorInfo must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 201
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "onCommitContentListener must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_3

    .line 204
    move-object v5, v2

    move-object v3, v5

    .line 205
    .local v3, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v5, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object v0, v5

    .line 222
    .end local v0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :goto_0
    return-object v0

    .line 217
    .restart local v0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_3
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 218
    .local v3, "contentMimeTypes":[Ljava/lang/String;
    move-object v5, v3

    array-length v5, v5

    if-nez v5, :cond_4

    .line 219
    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 221
    :cond_4
    move-object v5, v2

    move-object v4, v5

    .line 222
    .local v4, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v5, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object v0, v5

    goto :goto_0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 18
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "action":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "data":Landroid/os/Bundle;
    move-object/from16 v2, p2

    .local v2, "onCommitContentListener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    const-string/jumbo v12, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    move-object v13, v0

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 59
    const/4 v12, 0x0

    move v0, v12

    .line 82
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v0

    .line 61
    .restart local v0    # "action":Ljava/lang/String;
    :cond_0
    move-object v12, v1

    if-nez v12, :cond_1

    .line 62
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 64
    :cond_1
    const/4 v12, 0x0

    move-object v3, v12

    .line 65
    .local v3, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v12, 0x0

    move v4, v12

    .line 67
    .local v4, "result":Z
    move-object v12, v1

    :try_start_0
    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/ResultReceiver;

    move-object v3, v12

    .line 68
    move-object v12, v1

    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object v5, v12

    .line 69
    .local v5, "contentUri":Landroid/net/Uri;
    move-object v12, v1

    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/ClipDescription;

    move-object v6, v12

    .line 71
    .local v6, "description":Landroid/content/ClipDescription;
    move-object v12, v1

    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    move-object v7, v12

    .line 72
    .local v7, "linkUri":Landroid/net/Uri;
    move-object v12, v1

    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 73
    .local v8, "flags":I
    move-object v12, v1

    const-string/jumbo v13, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    move-object v9, v12

    .line 74
    .local v9, "opts":Landroid/os/Bundle;
    new-instance v12, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v16}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    move-object v10, v12

    .line 76
    .local v10, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v12, v2

    move-object v13, v10

    move v14, v8

    move-object v15, v9

    invoke-interface {v12, v13, v14, v15}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    move v4, v12

    .line 78
    move-object v12, v3

    if-eqz v12, :cond_2

    .line 79
    move-object v12, v3

    move v13, v4

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 82
    :cond_2
    move v12, v4

    move v0, v12

    goto :goto_0

    .line 79
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 78
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "description":Landroid/content/ClipDescription;
    .end local v7    # "linkUri":Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "opts":Landroid/os/Bundle;
    .end local v10    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v3

    if-eqz v12, :cond_4

    .line 79
    move-object v12, v3

    move v13, v4

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    move-object v12, v11

    throw v12

    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method
