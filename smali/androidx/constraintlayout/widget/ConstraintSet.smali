.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4a

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x49

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field private static final HEIGHT_PERCENT:I = 0x46

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x4b

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field private static final WIDTH_PERCENT:I = 0x45

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 195
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 200
    new-instance v0, Landroid/util/SparseIntArray;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 274
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    return-void

    .line 195
    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 198
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .locals 16

    .prologue
    .line 2443
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object/from16 v1, p1

    .local v1, "view":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "referenceIdString":Ljava/lang/String;
    move-object v12, v2

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 2444
    .local v3, "split":[Ljava/lang/String;
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v4, v12

    .line 2445
    .local v4, "context":Landroid/content/Context;
    move-object v12, v3

    array-length v12, v12

    new-array v12, v12, [I

    move-object v5, v12

    .line 2446
    .local v5, "tags":[I
    const/4 v12, 0x0

    move v6, v12

    .line 2447
    .local v6, "count":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_2

    .line 2448
    move-object v12, v3

    move v13, v7

    aget-object v12, v12, v13

    move-object v8, v12

    .line 2449
    .local v8, "idString":Ljava/lang/String;
    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 2450
    const/4 v12, 0x0

    move v9, v12

    .line 2452
    .local v9, "tag":I
    :try_start_0
    const-class v12, Landroidx/constraintlayout/widget/R$id;

    move-object v10, v12

    .line 2453
    .local v10, "res":Ljava/lang/Class;
    move-object v12, v10

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    move-object v11, v12

    .line 2454
    .local v11, "field":Ljava/lang/reflect/Field;
    move-object v12, v11

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    move v9, v12

    .line 2458
    .line 2459
    .end local v10    # "res":Ljava/lang/Class;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    :goto_1
    move v12, v9

    if-nez v12, :cond_0

    .line 2460
    move-object v12, v4

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v13, v8

    const-string/jumbo v14, "id"

    move-object v15, v4

    .line 2461
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2460
    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move v9, v12

    .line 2464
    :cond_0
    move v12, v9

    if-nez v12, :cond_1

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v12, :cond_1

    .line 2465
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v10, v12

    .line 2466
    .local v10, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v12, v10

    const/4 v13, 0x0

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    .line 2467
    .local v11, "value":Ljava/lang/Object;
    move-object v12, v11

    if-eqz v12, :cond_1

    move-object v12, v11

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    .line 2468
    move-object v12, v11

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v9, v12

    .line 2471
    .end local v10    # "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_1
    move-object v12, v5

    move v13, v6

    add-int/lit8 v6, v6, 0x1

    move v14, v9

    aput v14, v12, v13

    .line 2447
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2456
    :catch_0
    move-exception v12

    move-object v10, v12

    goto :goto_1

    .line 2473
    .end local v8    # "idString":Ljava/lang/String;
    .end local v9    # "tag":I
    :cond_2
    move v12, v6

    move-object v13, v3

    array-length v13, v13

    if-eq v12, v13, :cond_3

    .line 2474
    move-object v12, v5

    move v13, v6

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    move-object v5, v12

    .line 2476
    :cond_3
    move-object v12, v5

    move-object v0, v12

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    return-object v0
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .locals 19

    .prologue
    .line 1071
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "leftId":I
    move/from16 v2, p2

    .local v2, "leftSide":I
    move/from16 v3, p3

    .local v3, "rightId":I
    move/from16 v4, p4

    .local v4, "rightSide":I
    move-object/from16 v5, p5

    .local v5, "chainIds":[I
    move-object/from16 v6, p6

    .local v6, "weights":[F
    move/from16 v7, p7

    .local v7, "style":I
    move/from16 v8, p8

    .local v8, "left":I
    move/from16 v9, p9

    .local v9, "right":I
    move-object v12, v5

    array-length v12, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 1072
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string/jumbo v14, "must have 2 or more widgets in a chain"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1074
    :cond_0
    move-object v12, v6

    if-eqz v12, :cond_1

    move-object v12, v6

    array-length v12, v12

    move-object v13, v5

    array-length v13, v13

    if-eq v12, v13, :cond_1

    .line 1075
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string/jumbo v14, "must have 2 or more widgets in a chain"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1077
    :cond_1
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 1078
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v12

    move-object v13, v6

    const/4 v14, 0x0

    aget v13, v13, v14

    iput v13, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1080
    :cond_2
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v12

    move v13, v7

    iput v13, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1081
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move v14, v8

    move v15, v1

    move/from16 v16, v2

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1082
    const/4 v12, 0x1

    move v10, v12

    .local v10, "i":I
    :goto_0
    move v12, v10

    move-object v13, v5

    array-length v13, v13

    if-ge v12, v13, :cond_4

    .line 1083
    move-object v12, v5

    move v13, v10

    aget v12, v12, v13

    move v11, v12

    .line 1084
    .local v11, "chainId":I
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    aget v13, v13, v14

    move v14, v8

    move-object v15, v5

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v9

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1085
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move v14, v9

    move-object v15, v5

    move/from16 v16, v10

    aget v15, v15, v16

    move/from16 v16, v8

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1086
    move-object v12, v6

    if-eqz v12, :cond_3

    .line 1087
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v12

    move-object v13, v6

    move v14, v10

    aget v13, v13, v14

    iput v13, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1082
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1091
    .end local v11    # "chainId":I
    :cond_4
    move-object v12, v0

    move-object v13, v5

    move-object v14, v5

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move v14, v9

    move v15, v3

    move/from16 v16, v4

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1094
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 9

    .prologue
    .line 2189
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    move-object v3, v5

    .line 2190
    .local v3, "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 2191
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->populateConstraint(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 2192
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2193
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    return-object v0
.end method

.method private get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 8

    .prologue
    .line 2110
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2111
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2113
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 7

    .prologue
    .line 2181
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "def":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v3, v4

    .line 2182
    .local v3, "ret":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2183
    move-object v4, v0

    move v5, v1

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move v3, v4

    .line 2185
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return v0
.end method

.method private populateConstraint(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 11

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v2, p2

    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v6

    .line 2198
    .local v3, "N":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 2199
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move v5, v6

    .line 2238
    .local v5, "attr":I
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2436
    :pswitch_0
    const-string/jumbo v6, "ConstraintSet"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown attribute 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    .line 2437
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2436
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2198
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2240
    :pswitch_1
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 2241
    goto :goto_1

    .line 2243
    :pswitch_2
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 2244
    goto :goto_1

    .line 2246
    :pswitch_3
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 2247
    goto :goto_1

    .line 2249
    :pswitch_4
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 2250
    goto :goto_1

    .line 2252
    :pswitch_5
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 2253
    goto :goto_1

    .line 2255
    :pswitch_6
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 2256
    goto :goto_1

    .line 2258
    :pswitch_7
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 2259
    goto :goto_1

    .line 2261
    :pswitch_8
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 2262
    goto :goto_1

    .line 2264
    :pswitch_9
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 2265
    goto :goto_1

    .line 2267
    :pswitch_a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 2268
    goto/16 :goto_1

    .line 2270
    :pswitch_b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 2271
    goto/16 :goto_1

    .line 2273
    :pswitch_c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2274
    goto/16 :goto_1

    .line 2276
    :pswitch_d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2277
    goto/16 :goto_1

    .line 2279
    :pswitch_e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2280
    goto/16 :goto_1

    .line 2282
    :pswitch_f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 2283
    goto/16 :goto_1

    .line 2285
    :pswitch_10
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 2286
    goto/16 :goto_1

    .line 2288
    :pswitch_11
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 2289
    goto/16 :goto_1

    .line 2291
    :pswitch_12
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 2292
    goto/16 :goto_1

    .line 2294
    :pswitch_13
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 2295
    goto/16 :goto_1

    .line 2297
    :pswitch_14
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 2298
    goto/16 :goto_1

    .line 2300
    :pswitch_15
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 2301
    goto/16 :goto_1

    .line 2303
    :pswitch_16
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 2304
    goto/16 :goto_1

    .line 2306
    :pswitch_17
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 2307
    goto/16 :goto_1

    .line 2309
    :pswitch_18
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 2310
    goto/16 :goto_1

    .line 2312
    :pswitch_19
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 2313
    goto/16 :goto_1

    .line 2315
    :pswitch_1a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 2316
    goto/16 :goto_1

    .line 2318
    :pswitch_1b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 2319
    goto/16 :goto_1

    .line 2321
    :pswitch_1c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 2322
    goto/16 :goto_1

    .line 2324
    :pswitch_1d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 2325
    goto/16 :goto_1

    .line 2327
    :pswitch_1e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 2328
    goto/16 :goto_1

    .line 2330
    :pswitch_1f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 2331
    goto/16 :goto_1

    .line 2333
    :pswitch_20
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 2334
    goto/16 :goto_1

    .line 2336
    :pswitch_21
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 2337
    goto/16 :goto_1

    .line 2339
    :pswitch_22
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 2340
    goto/16 :goto_1

    .line 2342
    :pswitch_23
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 2343
    goto/16 :goto_1

    .line 2345
    :pswitch_24
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 2346
    goto/16 :goto_1

    .line 2348
    :pswitch_25
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 2349
    goto/16 :goto_1

    .line 2351
    :pswitch_26
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 2352
    goto/16 :goto_1

    .line 2354
    :pswitch_27
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 2355
    move-object v6, v1

    sget-object v7, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    aget v7, v7, v8

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 2356
    goto/16 :goto_1

    .line 2358
    :pswitch_28
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 2359
    goto/16 :goto_1

    .line 2361
    :pswitch_29
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 2362
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 2363
    goto/16 :goto_1

    .line 2365
    :pswitch_2a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 2366
    goto/16 :goto_1

    .line 2368
    :pswitch_2b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 2369
    goto/16 :goto_1

    .line 2371
    :pswitch_2c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 2372
    goto/16 :goto_1

    .line 2374
    :pswitch_2d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 2375
    goto/16 :goto_1

    .line 2377
    :pswitch_2e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 2378
    goto/16 :goto_1

    .line 2380
    :pswitch_2f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 2381
    goto/16 :goto_1

    .line 2383
    :pswitch_30
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 2384
    goto/16 :goto_1

    .line 2386
    :pswitch_31
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 2387
    goto/16 :goto_1

    .line 2389
    :pswitch_32
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 2390
    goto/16 :goto_1

    .line 2392
    :pswitch_33
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 2393
    goto/16 :goto_1

    .line 2395
    :pswitch_34
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 2396
    goto/16 :goto_1

    .line 2398
    :pswitch_35
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 2399
    goto/16 :goto_1

    .line 2401
    :pswitch_36
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 2402
    goto/16 :goto_1

    .line 2404
    :pswitch_37
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 2405
    goto/16 :goto_1

    .line 2407
    :pswitch_38
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 2408
    goto/16 :goto_1

    .line 2410
    :pswitch_39
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 2411
    goto/16 :goto_1

    .line 2413
    :pswitch_3a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 2414
    goto/16 :goto_1

    .line 2416
    :pswitch_3b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 2417
    goto/16 :goto_1

    .line 2419
    :pswitch_3c
    const-string/jumbo v6, "ConstraintSet"

    const-string/jumbo v7, "CURRENTLY UNSUPPORTED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2421
    goto/16 :goto_1

    .line 2423
    :pswitch_3d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 2424
    goto/16 :goto_1

    .line 2426
    :pswitch_3e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    .line 2427
    goto/16 :goto_1

    .line 2429
    :pswitch_3f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 2430
    goto/16 :goto_1

    .line 2432
    :pswitch_40
    const-string/jumbo v6, "ConstraintSet"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unused attribute 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    .line 2433
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2432
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2434
    goto/16 :goto_1

    .line 2440
    .end local v5    # "attr":I
    :cond_0
    return-void

    .line 2238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_24
        :pswitch_8
        :pswitch_7
        :pswitch_39
        :pswitch_a
        :pswitch_b
        :pswitch_22
        :pswitch_13
        :pswitch_12
        :pswitch_1a
        :pswitch_1c
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_18
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1d
        :pswitch_26
        :pswitch_27
        :pswitch_25
        :pswitch_1f
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_20
        :pswitch_3
        :pswitch_4
        :pswitch_21
        :pswitch_10
        :pswitch_11
        :pswitch_23
        :pswitch_6
        :pswitch_5
        :pswitch_1e
        :pswitch_38
        :pswitch_35
        :pswitch_34
        :pswitch_37
        :pswitch_36
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "side":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 2133
    const-string/jumbo v2, "undefined"

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    :goto_0
    return-object v0

    .line 2119
    .restart local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    :pswitch_0
    const-string/jumbo v2, "left"

    move-object v0, v2

    goto :goto_0

    .line 2121
    :pswitch_1
    const-string/jumbo v2, "right"

    move-object v0, v2

    goto :goto_0

    .line 2123
    :pswitch_2
    const-string/jumbo v2, "top"

    move-object v0, v2

    goto :goto_0

    .line 2125
    :pswitch_3
    const-string/jumbo v2, "bottom"

    move-object v0, v2

    goto :goto_0

    .line 2127
    :pswitch_4
    const-string/jumbo v2, "baseline"

    move-object v0, v2

    goto :goto_0

    .line 2129
    :pswitch_5
    const-string/jumbo v2, "start"

    move-object v0, v2

    goto :goto_0

    .line 2131
    :pswitch_6
    const-string/jumbo v2, "end"

    move-object v0, v2

    goto :goto_0

    .line 2117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .locals 10

    .prologue
    .line 1909
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "leftId":I
    move v3, p3

    .local v3, "rightId":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1910
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x2

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1911
    move v4, v2

    if-eqz v4, :cond_0

    .line 1912
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x2

    move v7, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1914
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 1915
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    move v7, v1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1917
    :cond_1
    return-void

    .line 1909
    :cond_2
    const/4 v8, 0x2

    goto :goto_0

    .line 1910
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public addToHorizontalChainRTL(III)V
    .locals 10

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "leftId":I
    move v3, p3

    .local v3, "rightId":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x6

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x6

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1928
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x7

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x7

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1929
    move v4, v2

    if-eqz v4, :cond_0

    .line 1930
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x7

    move v7, v1

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1932
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 1933
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x6

    move v7, v1

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1935
    :cond_1
    return-void

    .line 1927
    :cond_2
    const/4 v8, 0x7

    goto :goto_0

    .line 1928
    :cond_3
    const/4 v8, 0x6

    goto :goto_1
.end method

.method public addToVerticalChain(III)V
    .locals 10

    .prologue
    .line 1945
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "topId":I
    move v3, p3

    .local v3, "bottomId":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x3

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1946
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x4

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1947
    move v4, v2

    if-eqz v4, :cond_0

    .line 1948
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x4

    move v7, v1

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1950
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 1951
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x3

    move v7, v1

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1953
    :cond_1
    return-void

    .line 1945
    :cond_2
    const/4 v8, 0x4

    goto :goto_0

    .line 1946
    :cond_3
    const/4 v8, 0x3

    goto :goto_1
.end method

.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 790
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 791
    return-void
.end method

.method applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 14

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v9

    move v2, v9

    .line 798
    .local v2, "count":I
    new-instance v9, Ljava/util/HashSet;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v9

    .line 800
    .local v3, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v2

    if-ge v9, v10, :cond_7

    .line 801
    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 802
    .local v5, "view":Landroid/view/View;
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    move v6, v9

    .line 803
    .local v6, "id":I
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 804
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 806
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 807
    move-object v9, v3

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 808
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v7, v9

    .line 809
    .local v7, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v9, v5

    instance-of v9, v9, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v9, :cond_1

    .line 810
    move-object v9, v7

    const/4 v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 812
    :cond_1
    move-object v9, v7

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 813
    move-object v9, v7

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    packed-switch v9, :pswitch_data_0

    .line 829
    :cond_2
    :goto_1
    move-object v9, v5

    .line 830
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v8, v9

    .line 831
    .local v8, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 832
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    .line 835
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 836
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    .line 837
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationX(F)V

    .line 838
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationY(F)V

    .line 839
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 840
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 841
    move-object v9, v7

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 842
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_3
    move-object v9, v7

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_4

    .line 845
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_4
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_5

    .line 850
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    move-object v9, v7

    iget-boolean v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v9, :cond_5

    .line 852
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setElevation(F)V

    .line 800
    .end local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v8    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 815
    .restart local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :pswitch_0
    move-object v9, v5

    check-cast v9, Landroidx/constraintlayout/widget/Barrier;

    move-object v8, v9

    .line 816
    .local v8, "barrier":Landroidx/constraintlayout/widget/Barrier;
    move-object v9, v8

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 817
    move-object v9, v8

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 818
    move-object v9, v8

    move-object v10, v7

    iget-boolean v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 819
    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v9, :cond_6

    .line 820
    move-object v9, v8

    move-object v10, v7

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto/16 :goto_1

    .line 821
    :cond_6
    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 822
    move-object v9, v7

    move-object v10, v0

    move-object v11, v8

    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 824
    move-object v9, v8

    move-object v10, v7

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto/16 :goto_1

    .line 858
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "id":I
    .end local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v8    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_7
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    .end local v4    # "i":I
    :goto_2
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v5, v9

    .line 859
    .local v5, "id":Ljava/lang/Integer;
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v6, v9

    .line 860
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v9, v6

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 861
    move-object v9, v6

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    packed-switch v9, :pswitch_data_1

    .line 881
    :cond_8
    :goto_3
    move-object v9, v6

    iget-boolean v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v9, :cond_9

    .line 882
    new-instance v9, Landroidx/constraintlayout/widget/Guideline;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    move-object v7, v9

    .line 883
    .local v7, "g":Landroidx/constraintlayout/widget/Guideline;
    move-object v9, v7

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    .line 884
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 885
    .local v8, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 886
    move-object v9, v1

    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    .end local v7    # "g":Landroidx/constraintlayout/widget/Guideline;
    .end local v8    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_9
    goto :goto_2

    .line 863
    :pswitch_1
    new-instance v9, Landroidx/constraintlayout/widget/Barrier;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    move-object v7, v9

    .line 864
    .local v7, "barrier":Landroidx/constraintlayout/widget/Barrier;
    move-object v9, v7

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 865
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v9, :cond_b

    .line 866
    move-object v9, v7

    move-object v10, v6

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 872
    :cond_a
    :goto_4
    move-object v9, v7

    move-object v10, v6

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 873
    move-object v9, v1

    .line 874
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 875
    .restart local v8    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 876
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 877
    move-object v9, v1

    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 867
    .end local v8    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_b
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 868
    move-object v9, v6

    move-object v10, v0

    move-object v11, v7

    move-object v12, v6

    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 870
    move-object v9, v7

    move-object v10, v6

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_4

    .line 889
    .end local v5    # "id":Ljava/lang/Integer;
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v7    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_c
    return-void

    .line 813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 861
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public center(IIIIIIIF)V
    .locals 17

    .prologue
    .line 909
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "centerID":I
    move/from16 v2, p2

    .local v2, "firstID":I
    move/from16 v3, p3

    .local v3, "firstSide":I
    move/from16 v4, p4

    .local v4, "firstMargin":I
    move/from16 v5, p5

    .local v5, "secondId":I
    move/from16 v6, p6

    .local v6, "secondSide":I
    move/from16 v7, p7

    .local v7, "secondMargin":I
    move/from16 v8, p8

    .local v8, "bias":F
    move v10, v4

    if-gez v10, :cond_0

    .line 910
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "margin must be > 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 912
    :cond_0
    move v10, v7

    if-gez v10, :cond_1

    .line 913
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "margin must be > 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 915
    :cond_1
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_2

    move v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 916
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "bias must be between 0 and 1 inclusive"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 919
    :cond_3
    move v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    move v10, v3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 920
    :cond_4
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 921
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 922
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 923
    .local v9, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 924
    .line 935
    :goto_0
    return-void

    .line 924
    .end local v9    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_5
    move v10, v3

    const/4 v11, 0x6

    if-eq v10, v11, :cond_6

    move v10, v3

    const/4 v11, 0x7

    if-ne v10, v11, :cond_7

    .line 925
    :cond_6
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x6

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 926
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x7

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 927
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 928
    .restart local v9    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 929
    goto :goto_0

    .line 930
    .end local v9    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_7
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x3

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 931
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 932
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 933
    .restart local v9    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_0
.end method

.method public centerHorizontally(II)V
    .locals 12

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "toView":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1320
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1324
    :goto_0
    return-void

    .line 1322
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerHorizontally(IIIIIIIF)V
    .locals 16

    .prologue
    .line 951
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "centerID":I
    move/from16 v2, p2

    .local v2, "leftId":I
    move/from16 v3, p3

    .local v3, "leftSide":I
    move/from16 v4, p4

    .local v4, "leftMargin":I
    move/from16 v5, p5

    .local v5, "rightId":I
    move/from16 v6, p6

    .local v6, "rightSide":I
    move/from16 v7, p7

    .local v7, "rightMargin":I
    move/from16 v8, p8

    .local v8, "bias":F
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 952
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 953
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 954
    .local v9, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 955
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .locals 12

    .prologue
    .line 1333
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "toView":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1334
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1338
    :goto_0
    return-void

    .line 1336
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .locals 16

    .prologue
    .line 971
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "centerID":I
    move/from16 v2, p2

    .local v2, "startId":I
    move/from16 v3, p3

    .local v3, "startSide":I
    move/from16 v4, p4

    .local v4, "startMargin":I
    move/from16 v5, p5

    .local v5, "endId":I
    move/from16 v6, p6

    .local v6, "endSide":I
    move/from16 v7, p7

    .local v7, "endMargin":I
    move/from16 v8, p8

    .local v8, "bias":F
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x6

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 972
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x7

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 973
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 974
    .local v9, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 975
    return-void
.end method

.method public centerVertically(II)V
    .locals 12

    .prologue
    .line 1348
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "toView":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1349
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1353
    :goto_0
    return-void

    .line 1351
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerVertically(IIIIIIIF)V
    .locals 16

    .prologue
    .line 991
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "centerID":I
    move/from16 v2, p2

    .local v2, "topId":I
    move/from16 v3, p3

    .local v3, "topSide":I
    move/from16 v4, p4

    .local v4, "topMargin":I
    move/from16 v5, p5

    .local v5, "bottomId":I
    move/from16 v6, p6

    .local v6, "bottomSide":I
    move/from16 v7, p7

    .local v7, "bottomMargin":I
    move/from16 v8, p8

    .local v8, "bias":F
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x3

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 992
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 993
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v9, v10

    .line 994
    .local v9, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 995
    return-void
.end method

.method public clear(I)V
    .locals 4

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1362
    return-void
.end method

.method public clear(II)V
    .locals 8

    .prologue
    .line 1371
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "anchor":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1372
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v3, v4

    .line 1373
    .local v3, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1415
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "unknown constraint"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1375
    :pswitch_0
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1376
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1377
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1378
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1379
    .line 1418
    .end local v3    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_0
    :goto_0
    return-void

    .line 1381
    .restart local v3    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :pswitch_1
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1382
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1383
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1384
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1385
    goto :goto_0

    .line 1387
    :pswitch_2
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1388
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1389
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1390
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1391
    goto :goto_0

    .line 1393
    :pswitch_3
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1394
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1395
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1396
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1397
    goto :goto_0

    .line 1400
    :pswitch_4
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1401
    goto :goto_0

    .line 1403
    :pswitch_5
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1404
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1405
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1406
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1407
    goto :goto_0

    .line 1409
    :pswitch_6
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1410
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1411
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1412
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1413
    goto :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "constraintLayoutId":I
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 685
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 16

    .prologue
    .line 705
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object/from16 v1, p1

    .local v1, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v10

    move v2, v10

    .line 706
    .local v2, "count":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 707
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_0
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_6

    .line 708
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 709
    .local v4, "view":Landroid/view/View;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v5, v10

    .line 711
    .local v5, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    move v6, v10

    .line 712
    .local v6, "id":I
    move v10, v6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 713
    new-instance v10, Ljava/lang/RuntimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 715
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 716
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 718
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v7, v10

    .line 719
    .local v7, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v10, v7

    move v11, v6

    move-object v12, v5

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 720
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 721
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_4

    .line 722
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 723
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getRotation()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 724
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getRotationX()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 725
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getRotationY()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 726
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 727
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 729
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getPivotX()F

    move-result v10

    move v8, v10

    .line 730
    .local v8, "pivotX":F
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getPivotY()F

    move-result v10

    move v9, v10

    .line 732
    .local v9, "pivotY":F
    move v10, v8

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    move v10, v9

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_3

    .line 733
    :cond_2
    move-object v10, v7

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 734
    move-object v10, v7

    move v11, v9

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 737
    :cond_3
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getTranslationX()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 738
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 739
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4

    .line 740
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getTranslationZ()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 741
    move-object v10, v7

    iget-boolean v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v10, :cond_4

    .line 742
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getElevation()F

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 746
    .end local v8    # "pivotX":F
    .end local v9    # "pivotY":F
    :cond_4
    move-object v10, v4

    instance-of v10, v10, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v10, :cond_5

    .line 747
    move-object v10, v4

    check-cast v10, Landroidx/constraintlayout/widget/Barrier;

    move-object v8, v10

    .line 748
    .local v8, "barrier":Landroidx/constraintlayout/widget/Barrier;
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Barrier;->allowsGoneWidget()Z

    move-result v11

    iput-boolean v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 749
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v11

    iput-object v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 750
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v11

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 707
    .end local v8    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 753
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "id":I
    .end local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_6
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 8

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "set":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 694
    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 695
    .local v3, "key":Ljava/lang/Integer;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 696
    goto :goto_0

    .line 697
    .end local v3    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/Constraints;)V
    .locals 15

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object/from16 v1, p1

    .local v1, "constraints":Landroidx/constraintlayout/widget/Constraints;
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    move-result v9

    move v2, v9

    .line 762
    .local v2, "count":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 763
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    :goto_0
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_3

    .line 764
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v4, v9

    .line 765
    .local v4, "view":Landroid/view/View;
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-object v5, v9

    .line 767
    .local v5, "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    move v6, v9

    .line 768
    .local v6, "id":I
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 769
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 771
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 772
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 774
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v7, v9

    .line 775
    .local v7, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v9, v4

    instance-of v9, v9, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v9, :cond_2

    .line 776
    move-object v9, v4

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object v8, v9

    .line 777
    .local v8, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v9, v7

    move-object v10, v8

    move v11, v6

    move-object v12, v5

    invoke-static {v9, v10, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 779
    .end local v8    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_2
    move-object v9, v7

    move v10, v6

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 781
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .end local v6    # "id":I
    .end local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_3
    return-void
.end method

.method public connect(IIII)V
    .locals 12

    .prologue
    .line 1219
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "startID":I
    move v2, p2

    .local v2, "startSide":I
    move v3, p3

    .local v3, "endID":I
    move/from16 v4, p4

    .local v4, "endSide":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1220
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1222
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v5, v6

    .line 1223
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1307
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    move v10, v2

    .line 1308
    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " unknown"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1225
    :pswitch_0
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1226
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1227
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1310
    :goto_0
    return-void

    .line 1228
    :cond_1
    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1229
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1230
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_0

    .line 1232
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "left to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1236
    :pswitch_1
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1237
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1238
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_0

    .line 1240
    :cond_3
    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1241
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1242
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_0

    .line 1244
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1248
    :pswitch_2
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1249
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1250
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1251
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1252
    :cond_5
    move v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 1253
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1254
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1255
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1257
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1261
    :pswitch_3
    move v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 1262
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1263
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1264
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1265
    :cond_7
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 1266
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1267
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1268
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1270
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1274
    :pswitch_4
    move v6, v4

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 1275
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1276
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1277
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1278
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1279
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_0

    .line 1281
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1285
    :pswitch_5
    move v6, v4

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 1286
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1287
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_0

    .line 1288
    :cond_a
    move v6, v4

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    .line 1289
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1290
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_0

    .line 1292
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1296
    :pswitch_6
    move v6, v4

    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    .line 1297
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1298
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_0

    .line 1299
    :cond_c
    move v6, v4

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 1300
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1301
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_0

    .line 1303
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public connect(IIIII)V
    .locals 13

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "startID":I
    move v2, p2

    .local v2, "startSide":I
    move/from16 v3, p3

    .local v3, "endID":I
    move/from16 v4, p4

    .local v4, "endSide":I
    move/from16 v5, p5

    .local v5, "margin":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1107
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1109
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v6, v7

    .line 1110
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v7, v2

    packed-switch v7, :pswitch_data_0

    .line 1205
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    move v11, v2

    .line 1206
    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " unknown"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1112
    :pswitch_0
    move v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1113
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1114
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1122
    :goto_0
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1123
    .line 1208
    :goto_1
    return-void

    .line 1115
    :cond_1
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1116
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1117
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_0

    .line 1120
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Left to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1125
    :pswitch_1
    move v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1126
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1127
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1136
    :goto_2
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1137
    goto :goto_1

    .line 1129
    :cond_3
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1130
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1131
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_2

    .line 1134
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1139
    :pswitch_2
    move v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 1140
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1141
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1142
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1151
    :goto_3
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1152
    goto/16 :goto_1

    .line 1143
    :cond_5
    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 1144
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1145
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1146
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_3

    .line 1149
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1154
    :pswitch_3
    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 1155
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1156
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1157
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1167
    :goto_4
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1168
    goto/16 :goto_1

    .line 1159
    :cond_7
    move v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 1160
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1161
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1162
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_4

    .line 1165
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1170
    :pswitch_4
    move v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    .line 1171
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1172
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1173
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1174
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1175
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_1

    .line 1177
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1181
    :pswitch_5
    move v7, v4

    const/4 v8, 0x6

    if-ne v7, v8, :cond_a

    .line 1182
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1183
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1190
    :goto_5
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1191
    goto/16 :goto_1

    .line 1184
    :cond_a
    move v7, v4

    const/4 v8, 0x7

    if-ne v7, v8, :cond_b

    .line 1185
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1186
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    goto :goto_5

    .line 1188
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1193
    :pswitch_6
    move v7, v4

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c

    .line 1194
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1195
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1202
    :goto_6
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1203
    goto/16 :goto_1

    .line 1196
    :cond_c
    move v7, v4

    const/4 v8, 0x6

    if-ne v7, v8, :cond_d

    .line 1197
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1198
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    goto :goto_6

    .line 1200
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .locals 8

    .prologue
    .line 1741
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "id":I
    move v3, p3

    .local v3, "radius":I
    move v4, p4

    .local v4, "angle":F
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v6

    move-object v5, v6

    .line 1742
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v6, v5

    move v7, v2

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 1743
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 1744
    move-object v6, v5

    move v7, v4

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 1745
    return-void
.end method

.method public constrainDefaultHeight(II)V
    .locals 5

    .prologue
    .line 1831
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 1832
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .locals 5

    .prologue
    .line 1844
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 1845
    return-void
.end method

.method public constrainHeight(II)V
    .locals 5

    .prologue
    .line 1714
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 1715
    return-void
.end method

.method public constrainMaxHeight(II)V
    .locals 5

    .prologue
    .line 1757
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 1758
    return-void
.end method

.method public constrainMaxWidth(II)V
    .locals 5

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 1771
    return-void
.end method

.method public constrainMinHeight(II)V
    .locals 5

    .prologue
    .line 1783
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 1784
    return-void
.end method

.method public constrainMinWidth(II)V
    .locals 5

    .prologue
    .line 1796
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 1797
    return-void
.end method

.method public constrainPercentHeight(IF)V
    .locals 5

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "percent":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 1819
    return-void
.end method

.method public constrainPercentWidth(IF)V
    .locals 5

    .prologue
    .line 1807
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "percent":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 1808
    return-void
.end method

.method public constrainWidth(II)V
    .locals 5

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 1728
    return-void
.end method

.method public create(II)V
    .locals 6

    .prologue
    .line 2047
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "guidelineID":I
    move v2, p2

    .local v2, "orientation":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    move-object v3, v4

    .line 2048
    .local v3, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2049
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 2050
    return-void
.end method

.method public varargs createBarrier(II[I)V
    .locals 7

    .prologue
    .line 2062
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "direction":I
    move-object v3, p3

    .local v3, "referenced":[I
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 2063
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 2064
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 2065
    move-object v5, v4

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2066
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 2067
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .locals 18

    .prologue
    .line 1048
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "leftId":I
    move/from16 v2, p2

    .local v2, "leftSide":I
    move/from16 v3, p3

    .local v3, "rightId":I
    move/from16 v4, p4

    .local v4, "rightSide":I
    move-object/from16 v5, p5

    .local v5, "chainIds":[I
    move-object/from16 v6, p6

    .local v6, "weights":[F
    move/from16 v7, p7

    .local v7, "style":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-direct/range {v8 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1049
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .locals 18

    .prologue
    .line 1065
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "startId":I
    move/from16 v2, p2

    .local v2, "startSide":I
    move/from16 v3, p3

    .local v3, "endId":I
    move/from16 v4, p4

    .local v4, "endSide":I
    move-object/from16 v5, p5

    .local v5, "chainIds":[I
    move-object/from16 v6, p6

    .local v6, "weights":[F
    move/from16 v7, p7

    .local v7, "style":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    const/16 v16, 0x6

    const/16 v17, 0x7

    invoke-direct/range {v8 .. v17}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1066
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .locals 17

    .prologue
    .line 1011
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move/from16 v1, p1

    .local v1, "topId":I
    move/from16 v2, p2

    .local v2, "topSide":I
    move/from16 v3, p3

    .local v3, "bottomId":I
    move/from16 v4, p4

    .local v4, "bottomSide":I
    move-object/from16 v5, p5

    .local v5, "chainIds":[I
    move-object/from16 v6, p6

    .local v6, "weights":[F
    move/from16 v7, p7

    .local v7, "style":I
    move-object v10, v5

    array-length v10, v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 1012
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "must have 2 or more widgets in a chain"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1014
    :cond_0
    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    array-length v10, v10

    move-object v11, v5

    array-length v11, v11

    if-eq v10, v11, :cond_1

    .line 1015
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "must have 2 or more widgets in a chain"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1017
    :cond_1
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 1018
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    move-object v11, v6

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1020
    :cond_2
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    move v11, v7

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1022
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x3

    move v13, v1

    move v14, v2

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1023
    const/4 v10, 0x1

    move v8, v10

    .local v8, "i":I
    :goto_0
    move v10, v8

    move-object v11, v5

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 1024
    move-object v10, v5

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 1025
    .local v9, "chainId":I
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    const/4 v12, 0x3

    move-object v13, v5

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1026
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    move-object v13, v5

    move v14, v8

    aget v13, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1027
    move-object v10, v6

    if-eqz v10, :cond_3

    .line 1028
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    move-object v11, v6

    move v12, v8

    aget v11, v11, v12

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1023
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1031
    .end local v9    # "chainId":I
    :cond_4
    move-object v10, v0

    move-object v11, v5

    move-object v12, v5

    array-length v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    move v13, v3

    move v14, v4

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1032
    return-void
.end method

.method public getApplyElevation(I)Z
    .locals 4

    .prologue
    .line 1547
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    return v0
.end method

.method public getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "mId":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    return-object v0
.end method

.method public load(Landroid/content/Context;I)V
    .locals 12

    .prologue
    .line 2145
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resourceId":I
    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v3, v9

    .line 2146
    .local v3, "res":Landroid/content/res/Resources;
    move-object v9, v3

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    move-object v4, v9

    .line 2147
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    move-object v5, v9

    .line 2148
    .local v5, "document":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v6, v9

    .line 2151
    .local v6, "tagName":Ljava/lang/String;
    move-object v9, v4

    :try_start_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move v7, v9

    .line 2152
    .local v7, "eventType":I
    :goto_0
    move v9, v7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 2154
    move v9, v7

    packed-switch v9, :pswitch_data_0

    .line 2153
    :goto_1
    :pswitch_0
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v7, v9

    goto :goto_0

    .line 2156
    :pswitch_1
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 2157
    goto :goto_1

    .line 2159
    :pswitch_2
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 2160
    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v9

    move-object v8, v9

    .line 2161
    .local v8, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v9, v6

    const-string/jumbo v10, "Guideline"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2162
    move-object v9, v8

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2164
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v10, v8

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 2165
    goto :goto_1

    .line 2167
    .end local v8    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :pswitch_3
    const/4 v9, 0x0

    move-object v6, v9

    .line 2168
    goto :goto_1

    .line 2177
    .line 2178
    .end local v7    # "eventType":I
    :cond_1
    :goto_2
    return-void

    .line 2173
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 2174
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v9, v7

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 2177
    goto :goto_2

    .line 2175
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 2176
    .local v7, "e":Ljava/io/IOException;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .locals 13

    .prologue
    .line 1995
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1996
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v2, v7

    .line 1997
    .local v2, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    move v3, v7

    .line 1998
    .local v3, "leftId":I
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    move v4, v7

    .line 1999
    .local v4, "rightId":I
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 2000
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 2002
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    move v10, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2003
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    move v10, v3

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2013
    :cond_1
    :goto_0
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2014
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2038
    .end local v2    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v3    # "leftId":I
    .end local v4    # "rightId":I
    :cond_2
    :goto_1
    return-void

    .line 2004
    .restart local v2    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .restart local v3    # "leftId":I
    .restart local v4    # "rightId":I
    :cond_3
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2005
    :cond_4
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 2007
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 2008
    :cond_5
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2010
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 2017
    :cond_6
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    move v5, v7

    .line 2018
    .local v5, "startId":I
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    move v6, v7

    .line 2019
    .local v6, "endId":I
    move v7, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 2020
    :cond_7
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 2022
    move-object v7, v0

    move v8, v5

    const/4 v9, 0x7

    move v10, v6

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2023
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x6

    move v10, v3

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2034
    :cond_8
    :goto_2
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2035
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    goto :goto_1

    .line 2024
    :cond_9
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 2025
    :cond_a
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 2027
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x7

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 2028
    :cond_b
    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 2030
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x6

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2
.end method

.method public removeFromVerticalChain(I)V
    .locals 11

    .prologue
    .line 1963
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1964
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-object v2, v5

    .line 1965
    .local v2, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    move v3, v5

    .line 1966
    .local v3, "topId":I
    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    move v4, v5

    .line 1967
    .local v4, "bottomId":I
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1968
    :cond_0
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1970
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x4

    move v8, v4

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1971
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x3

    move v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1983
    .end local v2    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v3    # "topId":I
    .end local v4    # "bottomId":I
    :cond_1
    :goto_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 1984
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 1985
    return-void

    .line 1972
    .restart local v2    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .restart local v3    # "topId":I
    .restart local v4    # "bottomId":I
    :cond_2
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1973
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 1975
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x4

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1976
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1978
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x3

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0
.end method

.method public setAlpha(IF)V
    .locals 5

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "alpha":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 1539
    return-void
.end method

.method public setApplyElevation(IZ)V
    .locals 5

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "apply":Z
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 1559
    return-void
.end method

.method public setBarrierType(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 2108
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1518
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move-object v2, p2

    .local v2, "ratio":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 1519
    return-void
.end method

.method public setElevation(IF)V
    .locals 5

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "elevation":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 1569
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 1570
    return-void
.end method

.method public setGoneMargin(III)V
    .locals 9

    .prologue
    .line 1463
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "anchor":I
    move v3, p3

    .local v3, "value":I
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1464
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 1486
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "unknown constraint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1466
    :pswitch_0
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1467
    .line 1488
    :goto_0
    return-void

    .line 1469
    :pswitch_1
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1470
    goto :goto_0

    .line 1472
    :pswitch_2
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1473
    goto :goto_0

    .line 1475
    :pswitch_3
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1476
    goto :goto_0

    .line 1478
    :pswitch_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "baseline does not support margins"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1480
    :pswitch_5
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1481
    goto :goto_0

    .line 1483
    :pswitch_6
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1484
    goto :goto_0

    .line 1464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .locals 5

    .prologue
    .line 2076
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "guidelineID":I
    move v2, p2

    .local v2, "margin":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2077
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2078
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2080
    return-void
.end method

.method public setGuidelineEnd(II)V
    .locals 5

    .prologue
    .line 2089
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "guidelineID":I
    move v2, p2

    .local v2, "margin":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2090
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2091
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2092
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .locals 5

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "guidelineID":I
    move v2, p2

    .local v2, "ratio":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2102
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2103
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2104
    return-void
.end method

.method public setHorizontalBias(IF)V
    .locals 5

    .prologue
    .line 1497
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "bias":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 1498
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .locals 5

    .prologue
    .line 1882
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "chainStyle":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1883
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .locals 5

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "weight":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1857
    return-void
.end method

.method public setMargin(III)V
    .locals 9

    .prologue
    .line 1428
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "anchor":I
    move v3, p3

    .local v3, "value":I
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1429
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 1451
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "unknown constraint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1431
    :pswitch_0
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1432
    .line 1453
    :goto_0
    return-void

    .line 1434
    :pswitch_1
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1435
    goto :goto_0

    .line 1437
    :pswitch_2
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1438
    goto :goto_0

    .line 1440
    :pswitch_3
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1441
    goto :goto_0

    .line 1443
    :pswitch_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "baseline does not support margins"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1445
    :pswitch_5
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1446
    goto :goto_0

    .line 1448
    :pswitch_6
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1449
    goto :goto_0

    .line 1429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRotation(IF)V
    .locals 5

    .prologue
    .line 1579
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "rotation":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 1580
    return-void
.end method

.method public setRotationX(IF)V
    .locals 5

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "rotationX":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 1590
    return-void
.end method

.method public setRotationY(IF)V
    .locals 5

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "rotationY":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 1600
    return-void
.end method

.method public setScaleX(IF)V
    .locals 5

    .prologue
    .line 1609
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "scaleX":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 1610
    return-void
.end method

.method public setScaleY(IF)V
    .locals 5

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "scaleY":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 1620
    return-void
.end method

.method public setTransformPivot(IFF)V
    .locals 7

    .prologue
    .line 1656
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "transformPivotX":F
    move v3, p3

    .local v3, "transformPivotY":F
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1657
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 1658
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 1659
    return-void
.end method

.method public setTransformPivotX(IF)V
    .locals 5

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "transformPivotX":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 1632
    return-void
.end method

.method public setTransformPivotY(IF)V
    .locals 5

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "transformPivotY":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 1644
    return-void
.end method

.method public setTranslation(IFF)V
    .locals 7

    .prologue
    .line 1689
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "translationX":F
    move v3, p3

    .local v3, "translationY":F
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1690
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 1691
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 1692
    return-void
.end method

.method public setTranslationX(IF)V
    .locals 5

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "translationX":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 1669
    return-void
.end method

.method public setTranslationY(IF)V
    .locals 5

    .prologue
    .line 1678
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "translationY":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 1679
    return-void
.end method

.method public setTranslationZ(IF)V
    .locals 5

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "translationZ":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 1702
    return-void
.end method

.method public setVerticalBias(IF)V
    .locals 5

    .prologue
    .line 1507
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "bias":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 1508
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .locals 5

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "chainStyle":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1899
    return-void
.end method

.method public setVerticalWeight(IF)V
    .locals 5

    .prologue
    .line 1867
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "weight":F
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1868
    return-void
.end method

.method public setVisibility(II)V
    .locals 5

    .prologue
    .line 1528
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintSet;
    move v1, p1

    .local v1, "viewId":I
    move v2, p2

    .local v2, "visibility":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 1529
    return-void
.end method
