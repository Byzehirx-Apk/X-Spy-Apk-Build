.class public Lcom/google/appinventor/components/runtime/GridView$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

.field private kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

.field private textColor:I


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    .line 345
    move-object v3, v0

    move-object v4, v2

    const v5, 0x1090003

    invoke-direct {v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 335
    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    .line 336
    move-object v3, v0

    const/16 v4, 0x96

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 337
    move-object v3, v0

    const/16 v4, 0x96

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 338
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    .line 340
    move-object v3, v0

    const/high16 v4, 0x41600000    # 14.0f

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    .line 341
    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    .line 342
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-int v4, v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    .line 346
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    .line 348
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "ImageGallery_android_galleryItemBackground"

    const-string/jumbo v6, "styleable"

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V
    .locals 7

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    .line 1364
    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 332
    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1360
    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    .line 332
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    .line 1356
    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 332
    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1352
    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    .line 332
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public getElements()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    move v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getPadding()I
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    move v0, v1

    return v0
.end method

.method public getTextColor()F
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    int-to-float v1, v1

    move v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v6, Landroid/widget/ImageView;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 385
    new-instance v6, Landroid/widget/TextView;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 387
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    move v7, v1

    aget-object v6, v6, v7

    .line 388
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 389
    const/4 v6, 0x0

    move v5, v6

    .line 390
    move-object v6, v4

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    const-string/jumbo v7, ".jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    const-string/jumbo v7, ".gif"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    :cond_0
    const/4 v6, 0x1

    move v5, v6

    .line 394
    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    mul-int/2addr v6, v7

    move v4, v6

    .line 397
    move v6, v5

    if-eqz v6, :cond_2

    .line 398
    move-object v6, v2

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    move v9, v1

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    move-object v6, v2

    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    mul-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    mul-int/2addr v10, v11

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    move-object v6, v2

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 401
    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 402
    move-object v6, v2

    move v7, v4

    move v12, v7

    move v7, v12

    move v8, v12

    move v9, v4

    move v12, v9

    move v9, v12

    move v10, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 403
    move-object v6, v2

    move-object v0, v6

    .line 419
    :goto_0
    return-object v0

    .line 406
    :cond_2
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    move v8, v1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 408
    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    move-object v6, v3

    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:I

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 411
    move-object v6, v3

    move v7, v4

    move v12, v7

    move v7, v12

    move v8, v12

    move v9, v4

    move v12, v9

    move v9, v12

    move v10, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 415
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 416
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 419
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public setElements([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setFontSize(F)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:F

    .line 424
    return-void
.end method

.method public setPadding(I)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    .line 444
    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->textColor:I

    .line 432
    return-void
.end method
