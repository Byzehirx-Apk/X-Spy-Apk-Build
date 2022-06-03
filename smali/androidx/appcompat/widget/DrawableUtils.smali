.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 55
    :try_start_0
    const-string/jumbo v1, "android.graphics.Insets"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/DrawableUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 9
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-ge v7, v8, :cond_0

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v7, :cond_0

    .line 130
    const/4 v7, 0x0

    move v0, v7

    .line 163
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .line 131
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-ge v7, v8, :cond_1

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_1

    .line 134
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 135
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_2

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_2

    .line 136
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 139
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v7, :cond_5

    .line 141
    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    move-object v1, v7

    .line 142
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v7, :cond_4

    .line 143
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v7

    .line 145
    .local v2, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_4

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 146
    .local v6, "child":Landroid/graphics/drawable/Drawable;
    move-object v7, v6

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 147
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 145
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .line 163
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v6    # "child":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 151
    :cond_5
    move-object v7, v0

    instance-of v7, v7, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v7, :cond_6

    .line 152
    move-object v7, v0

    check-cast v7, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 154
    invoke-interface {v7}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 152
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 155
    :cond_6
    move-object v7, v0

    instance-of v7, v7, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v7, :cond_7

    .line 156
    move-object v7, v0

    check-cast v7, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    .line 158
    invoke-virtual {v7}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 156
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 159
    :cond_7
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v7, :cond_4

    .line 160
    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto/16 :goto_0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "android.graphics.drawable.VectorDrawable"

    move-object v2, v0

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    move-object v1, v0

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    move-object v1, v2

    .line 172
    .local v1, "originalState":[I
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    move-object v2, v0

    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 180
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 181
    return-void

    .line 177
    :cond_1
    move-object v2, v0

    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    goto :goto_0
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 14

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 73
    move-object v10, v0

    :try_start_0
    invoke-static {v10}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v0, v10

    .line 75
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getOpticalInsets"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v1, v10

    .line 77
    .local v1, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    move-object v10, v1

    move-object v11, v0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 79
    .local v2, "insets":Ljava/lang/Object;
    move-object v10, v2

    if-eqz v10, :cond_3

    .line 81
    new-instance v10, Landroid/graphics/Rect;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v10

    .line 83
    .local v3, "result":Landroid/graphics/Rect;
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 84
    .local v7, "field":Ljava/lang/reflect/Field;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const/4 v10, -0x1

    move v9, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 83
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :sswitch_0
    move-object v10, v8

    const-string/jumbo v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v9, v10

    goto :goto_1

    :sswitch_1
    move-object v10, v8

    const-string/jumbo v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move v9, v10

    goto :goto_1

    :sswitch_2
    move-object v10, v8

    const-string/jumbo v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    move v9, v10

    goto :goto_1

    :sswitch_3
    move-object v10, v8

    const-string/jumbo v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    move v9, v10

    goto :goto_1

    .line 86
    :pswitch_0
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 87
    goto :goto_2

    .line 89
    :pswitch_1
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 90
    goto :goto_2

    .line 92
    :pswitch_2
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 93
    goto :goto_2

    .line 95
    :pswitch_3
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 101
    .end local v1    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v2    # "insets":Ljava/lang/Object;
    .end local v3    # "result":Landroid/graphics/Rect;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DrawableUtils"

    const-string/jumbo v11, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v0, v10

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_4
    return-object v0

    .line 99
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "insets":Ljava/lang/Object;
    .restart local v3    # "result":Landroid/graphics/Rect;
    :cond_2
    move-object v10, v3

    move-object v0, v10

    goto :goto_4

    .line 104
    .end local v3    # "result":Landroid/graphics/Rect;
    :cond_3
    goto :goto_3

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 187
    move v0, p0

    .local v0, "value":I
    move-object v1, p1

    .local v1, "defaultMode":Landroid/graphics/PorterDuff$Mode;
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 194
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":I
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "value":I
    :pswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 189
    :pswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 190
    :pswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 191
    :pswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 192
    :pswitch_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 193
    :pswitch_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
