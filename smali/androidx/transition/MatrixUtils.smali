.class Landroidx/transition/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroidx/transition/MatrixUtils$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/MatrixUtils$1;-><init>()V

    sput-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/transition/MatrixUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method
