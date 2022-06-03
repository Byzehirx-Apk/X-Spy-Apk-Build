.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/CompoundButtonCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "button":Landroid/widget/CompoundButton;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 124
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .line 145
    .end local v0    # "button":Landroid/widget/CompoundButton;
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "button":Landroid/widget/CompoundButton;
    :cond_0
    sget-boolean v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    if-nez v2, :cond_1

    .line 129
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string/jumbo v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 130
    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    .line 137
    :cond_1
    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 139
    :try_start_1
    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 132
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "CompoundButtonCompat"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1

    .line 140
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 141
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "CompoundButtonCompat"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 142
    const/4 v2, 0x0

    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 145
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "button":Landroid/widget/CompoundButton;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 72
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 77
    .end local v0    # "button":Landroid/widget/CompoundButton;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "button":Landroid/widget/CompoundButton;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {v1}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "button":Landroid/widget/CompoundButton;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 108
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 113
    .end local v0    # "button":Landroid/widget/CompoundButton;
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "button":Landroid/widget/CompoundButton;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v1, :cond_1

    .line 111
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {v1}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "button":Landroid/widget/CompoundButton;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 58
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/TintableCompoundButton;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "button":Landroid/widget/CompoundButton;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/TintableCompoundButton;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
