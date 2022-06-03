.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# static fields
.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/EditorInfoCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    move-object v1, v2

    .line 113
    .local v1, "result":[Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 119
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :goto_1
    return-object v0

    .line 113
    .restart local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_0
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 115
    .end local v1    # "result":[Ljava/lang/String;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 116
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v2

    goto :goto_1

    .line 118
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 119
    .restart local v1    # "result":[Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    :goto_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move-object v1, p1

    .local v1, "contentMimeTypes":[Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 93
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 95
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
