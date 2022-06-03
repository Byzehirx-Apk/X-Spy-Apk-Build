.class public final Landroidx/core/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/PopupWindowCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 5
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "popupWindow":Landroid/widget/PopupWindow;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 120
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v2

    move v0, v2

    .line 140
    .end local v0    # "popupWindow":Landroid/widget/PopupWindow;
    :goto_0
    return v0

    .line 122
    .restart local v0    # "popupWindow":Landroid/widget/PopupWindow;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 123
    sget-boolean v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v2, :cond_1

    .line 125
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 126
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 132
    :cond_1
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 134
    :try_start_1
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 128
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "PopupWindowCompatApi21"

    const-string/jumbo v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 136
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "PopupWindowCompatApi21"

    const-string/jumbo v3, "Could not get overlap anchor field in PopupWindow"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 5
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "popupWindow":Landroid/widget/PopupWindow;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 184
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v2

    move v0, v2

    .line 204
    .end local v0    # "popupWindow":Landroid/widget/PopupWindow;
    :goto_0
    return v0

    .line 187
    .restart local v0    # "popupWindow":Landroid/widget/PopupWindow;
    :cond_0
    sget-boolean v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v2, :cond_1

    .line 189
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "getWindowLayoutType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 191
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 197
    :cond_1
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 199
    :try_start_1
    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 204
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 6
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "popupWindow":Landroid/widget/PopupWindow;
    move v1, p1

    .local v1, "overlapAnchor":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 91
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 93
    sget-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v3, :cond_2

    .line 95
    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string/jumbo v4, "mOverlapAnchor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 96
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 102
    :cond_2
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 104
    :try_start_1
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 98
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "PopupWindowCompatApi21"

    const-string/jumbo v4, "Could not fetch mOverlapAnchor field from PopupWindow"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 106
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "PopupWindowCompatApi21"

    const-string/jumbo v4, "Could not set overlap anchor field in PopupWindow"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 10
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "popupWindow":Landroid/widget/PopupWindow;
    move v1, p1

    .local v1, "layoutType":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 154
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 155
    .line 175
    :goto_0
    return-void

    .line 158
    :cond_0
    sget-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v3, :cond_1

    .line 160
    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string/jumbo v4, "setWindowLayoutType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 162
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 168
    :cond_1
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 170
    :try_start_1
    sget-object v3, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 173
    .line 175
    :cond_2
    :goto_2
    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1

    .line 171
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_2
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 12
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "popup":Landroid/widget/PopupWindow;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move v2, p2

    .local v2, "xoff":I
    move v3, p3

    .local v3, "yoff":I
    move/from16 v4, p4

    .local v4, "gravity":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_0

    .line 69
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    move v7, v2

    move v5, v7

    .line 72
    .local v5, "xoff1":I
    move v7, v4

    move-object v8, v1

    .line 73
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 72
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v6, v7

    .line 74
    .local v6, "hgrav":I
    move v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 77
    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    move v5, v7

    .line 79
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v5

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
