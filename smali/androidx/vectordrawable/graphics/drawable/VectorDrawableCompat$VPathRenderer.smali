.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mIsStateful:Ljava/lang/Boolean;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1161
    new-instance v0, Landroid/graphics/Matrix;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1182
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1162
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1172
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1173
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1174
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1175
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1176
    move-object v1, v0

    const/16 v2, 0xff

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1177
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1178
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1180
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 1183
    move-object v1, v0

    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1184
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1185
    move-object v1, v0

    new-instance v2, Landroid/graphics/Path;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1186
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 8

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, p1

    .local v1, "copy":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1162
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1172
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1173
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1174
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1175
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1176
    move-object v2, v0

    const/16 v3, 0xff

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1177
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1178
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1180
    move-object v2, v0

    new-instance v3, Landroidx/collection/ArrayMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 1208
    move-object v2, v0

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    invoke-direct {v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1209
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1210
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1211
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1212
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1213
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1214
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1215
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 1216
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1217
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1218
    move-object v2, v1

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1219
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1221
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1222
    return-void
.end method

.method private static cross(FFFF)F
    .locals 7

    .prologue
    .line 1364
    move v0, p0

    .local v0, "v1x":F
    move v1, p1

    .local v1, "v1y":F
    move v2, p2

    .local v2, "v2x":F
    move v3, p3

    .local v3, "v2y":F
    move v4, v0

    move v5, v3

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move v0, v4

    .end local v0    # "v1x":F
    return v0
.end method

.method private drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 17

    .prologue
    .line 1230
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object/from16 v1, p1

    .local v1, "currentGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object/from16 v2, p2

    .local v2, "currentMatrix":Landroid/graphics/Matrix;
    move-object/from16 v3, p3

    .local v3, "canvas":Landroid/graphics/Canvas;
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-object/from16 v6, p6

    .local v6, "filter":Landroid/graphics/ColorFilter;
    move-object v10, v1

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1232
    move-object v10, v1

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object v11, v1

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v10

    .line 1235
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1238
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move-object v11, v1

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 1239
    move-object v10, v1

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    move-object v8, v10

    .line 1240
    .local v8, "child":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    move-object v10, v8

    instance-of v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v10, :cond_1

    .line 1241
    move-object v10, v8

    check-cast v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v9, v10

    .line 1242
    .local v9, "childGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object v10, v0

    move-object v11, v9

    move-object v12, v1

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1244
    .line 1238
    .end local v9    # "childGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1244
    :cond_1
    move-object v10, v8

    instance-of v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v10, :cond_0

    .line 1245
    move-object v10, v8

    check-cast v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    move-object v9, v10

    .line 1246
    .local v9, "childPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    move-object v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1250
    .end local v8    # "child":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    .end local v9    # "childPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_2
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1251
    return-void
.end method

.method private drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 25

    .prologue
    .line 1260
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object/from16 v3, p1

    .local v3, "vGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    move-object/from16 v4, p2

    .local v4, "vPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object/from16 v5, p3

    .local v5, "canvas":Landroid/graphics/Canvas;
    move/from16 v6, p4

    .local v6, "w":I
    move/from16 v7, p5

    .local v7, "h":I
    move-object/from16 v8, p6

    .local v8, "filter":Landroid/graphics/ColorFilter;
    move/from16 v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v9, v19

    .line 1261
    .local v9, "scaleX":F
    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v10, v19

    .line 1262
    .local v10, "scaleY":F
    move/from16 v19, v9

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v11, v19

    .line 1263
    .local v11, "minScale":F
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v12, v19

    .line 1265
    .local v12, "groupStackedMatrix":Landroid/graphics/Matrix;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1266
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v19

    .line 1269
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v19

    move/from16 v13, v19

    .line 1270
    .local v13, "matrixScale":F
    move/from16 v19, v13

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    .line 1272
    .line 1361
    :goto_0
    return-void

    .line 1274
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1275
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v14, v19

    .line 1277
    .local v14, "path":Landroid/graphics/Path;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 1279
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1280
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1281
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v19

    .line 1361
    :cond_1
    :goto_1
    goto :goto_0

    .line 1283
    :cond_2
    move-object/from16 v19, v4

    check-cast v19, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object/from16 v15, v19

    .line 1284
    .local v15, "fullPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_3

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_5

    .line 1285
    :cond_3
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    move/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    rem-float v19, v19, v20

    move/from16 v16, v19

    .line 1286
    .local v16, "start":F
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    move/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    rem-float v19, v19, v20

    move/from16 v17, v19

    .line 1288
    .local v17, "end":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 1289
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/PathMeasure;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PathMeasure;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1291
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1293
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v19

    move/from16 v18, v19

    .line 1294
    .local v18, "len":F
    move/from16 v19, v16

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v16, v19

    .line 1295
    move/from16 v19, v17

    move/from16 v20, v18

    mul-float v19, v19, v20

    move/from16 v17, v19

    .line 1296
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 1297
    move/from16 v19, v16

    move/from16 v20, v17

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    .line 1298
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v18

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    .line 1299
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v21, v17

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    .line 1303
    :goto_2
    move-object/from16 v19, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1305
    .end local v16    # "start":F
    .end local v17    # "end":F
    .end local v18    # "len":F
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1307
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1308
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 1309
    .local v16, "fill":Landroidx/core/content/res/ComplexColorCompat;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 1310
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/Paint;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1311
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1314
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 1315
    .local v17, "fillPaint":Landroid/graphics/Paint;
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1316
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1317
    .local v18, "shader":Landroid/graphics/Shader;
    move-object/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1318
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v19

    .line 1319
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1320
    .line 1323
    .end local v18    # "shader":Landroid/graphics/Shader;
    :goto_3
    move-object/from16 v19, v17

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v19

    .line 1324
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    move/from16 v20, v0

    if-nez v20, :cond_d

    sget-object v20, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_4
    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1326
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1329
    .end local v16    # "fill":Landroidx/core/content/res/ComplexColorCompat;
    .end local v17    # "fillPaint":Landroid/graphics/Paint;
    :cond_7
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1330
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 1331
    .local v16, "strokeColor":Landroidx/core/content/res/ComplexColorCompat;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 1332
    move-object/from16 v19, v2

    new-instance v20, Landroid/graphics/Paint;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1333
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1336
    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 1337
    .local v17, "strokePaint":Landroid/graphics/Paint;
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1338
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1341
    :cond_9
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1342
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1345
    :cond_a
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1346
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1347
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1348
    .restart local v18    # "shader":Landroid/graphics/Shader;
    move-object/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1349
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v19

    .line 1350
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    move/from16 v20, v0

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1351
    .line 1355
    .end local v18    # "shader":Landroid/graphics/Shader;
    :goto_5
    move-object/from16 v19, v17

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v19

    .line 1356
    move/from16 v19, v11

    move/from16 v20, v13

    mul-float v19, v19, v20

    move/from16 v18, v19

    .line 1357
    .local v18, "finalStrokeScale":F
    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    move/from16 v20, v0

    move/from16 v21, v18

    mul-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1358
    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1301
    .local v16, "start":F
    .local v17, "end":F
    .local v18, "len":F
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v19, v0

    move/from16 v20, v16

    move/from16 v21, v17

    move-object/from16 v22, v14

    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v19

    goto/16 :goto_2

    .line 1321
    .end local v18    # "len":F
    .local v16, "fill":Landroidx/core/content/res/ComplexColorCompat;
    .local v17, "fillPaint":Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v19, v17

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v20

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 1324
    :cond_d
    sget-object v20, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto/16 :goto_4

    .line 1352
    .local v16, "strokeColor":Landroidx/core/content/res/ComplexColorCompat;
    .local v17, "strokePaint":Landroid/graphics/Paint;
    :cond_e
    move-object/from16 v19, v17

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v20

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 13

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, p1

    .local v1, "groupStackedMatrix":Landroid/graphics/Matrix;
    const/4 v8, 0x4

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    move-object v2, v8

    .line 1379
    .local v2, "unitVectors":[F
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1380
    move-object v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    .line 1381
    .local v3, "scaleX":F
    move-object v8, v2

    const/4 v9, 0x2

    aget v8, v8, v9

    float-to-double v8, v8

    move-object v10, v2

    const/4 v11, 0x3

    aget v10, v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 1382
    .local v4, "scaleY":F
    move-object v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object v9, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    move-object v10, v2

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object v11, v2

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v8, v9, v10, v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v8

    move v5, v8

    .line 1384
    .local v5, "crossProduct":F
    move v8, v3

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v6, v8

    .line 1386
    .local v6, "maxScale":F
    const/4 v8, 0x0

    move v7, v8

    .line 1387
    .local v7, "matrixScale":F
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 1388
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v6

    div-float/2addr v8, v9

    move v7, v8

    .line 1393
    :cond_0
    move v8, v7

    move v0, v8

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    return v0

    .line 1378
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 12

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move v2, p2

    .local v2, "w":I
    move v3, p3

    .local v3, "h":I
    move-object/from16 v4, p4

    .local v4, "filter":Landroid/graphics/ColorFilter;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1256
    return-void
.end method

.method public getAlpha()F
    .locals 3

    .prologue
    .line 1204
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    return v0
.end method

.method public getRootAlpha()I
    .locals 2

    .prologue
    .line 1193
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, v0

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    return v0
.end method

.method public isStateful()Z
    .locals 3

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 1398
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->isStateful()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1400
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 4

    .prologue
    .line 1404
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->onStateChanged([I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    return v0
.end method

.method public setAlpha(F)V
    .locals 5

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move v1, p1

    .local v1, "alpha":F
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 1200
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 4

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1190
    return-void
.end method
