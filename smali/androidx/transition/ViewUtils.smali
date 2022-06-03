.class Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroidx/transition/ViewUtilsBase;

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Landroidx/transition/ViewUtilsApi22;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    .line 59
    :goto_0
    new-instance v0, Landroidx/transition/ViewUtils$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Ljava/lang/Float;

    const-string/jumbo v3, "translationAlpha"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 74
    new-instance v0, Landroidx/transition/ViewUtils$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/Rect;

    const-string/jumbo v3, "clipBounds"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Landroidx/transition/ViewUtilsApi21;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 50
    new-instance v0, Landroidx/transition/ViewUtilsApi19;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Landroidx/transition/ViewUtilsBase;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/transition/ViewUtilsBase;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private static fetchViewFlagsField()V
    .locals 3

    .prologue
    .line 214
    sget-boolean v1, Landroidx/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 217
    sget-object v1, Landroidx/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    .line 223
    :cond_0
    return-void

    .line 218
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 219
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "ViewUtils"

    const-string/jumbo v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 94
    new-instance v1, Landroidx/transition/ViewOverlayApi18;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 96
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result v1

    move v0, v1

    .end local v0    # "view":Landroid/view/View;
    return v0
.end method

.method static getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 104
    new-instance v1, Landroidx/transition/WindowIdApi18;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 106
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Landroidx/transition/WindowIdApi14;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/transition/ViewUtilsBase;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v1, p1

    .local v1, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/transition/ViewUtilsBase;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 199
    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    sget-object v5, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/ViewUtilsBase;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 211
    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move v1, p1

    .local v1, "alpha":F
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/transition/ViewUtilsBase;->setTransitionAlpha(Landroid/view/View;F)V

    .line 111
    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move v1, p1

    .local v1, "visibility":I
    invoke-static {}, Landroidx/transition/ViewUtils;->fetchViewFlagsField()V

    .line 149
    sget-object v3, Landroidx/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 151
    :try_start_0
    sget-object v3, Landroidx/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 152
    .local v2, "viewFlags":I
    sget-object v3, Landroidx/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    move-object v4, v0

    move v5, v2

    const/16 v6, -0xd

    and-int/lit8 v5, v5, -0xd

    move v6, v1

    or-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 157
    .end local v2    # "viewFlags":I
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "matrix":Landroid/graphics/Matrix;
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 173
    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "matrix":Landroid/graphics/Matrix;
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 189
    return-void
.end method
