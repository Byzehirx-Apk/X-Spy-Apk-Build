.class public final Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic cardviews in Arrangements."
    iconName = "images/cardview.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;
    }
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

.field private final LOG_TAG:Ljava/lang/String;

.field private OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

.field private YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private fullClick:Z

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    move-object v2, v0

    const-string/jumbo v3, "KodularDynamicCardView"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->LOG_TAG:Ljava/lang/String;

    .line 41
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    .line 43
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    .line 44
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 45
    move-object v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    .line 47
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    .line 48
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    .line 49
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 50
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 51
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 52
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 53
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 57
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 58
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 59
    return-void
.end method


# virtual methods
.method public final AddComponentToCardView(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component into the card view component with the given id."
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v3, v5

    .line 111
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getChildViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v5

    .line 114
    move-object v5, v2

    :try_start_1
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 115
    move-object v4, v6

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 134
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 120
    :try_start_2
    const-string/jumbo v5, "KodularDynamicCardView"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 122
    move-object v5, v2

    :try_start_3
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 123
    move-object v2, v6

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    goto :goto_0

    .line 127
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 128
    :try_start_4
    const-string/jumbo v5, "KodularDynamicCardView"

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v5

    .line 133
    goto :goto_0

    .line 131
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 132
    const-string/jumbo v5, "KodularDynamicCardView"

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 134
    goto :goto_0
.end method

.method public final BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the cards\'s background color."
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    .line 283
    return-void
.end method

.method public final Click(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple click on a card view component with the specific id."
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Click"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 344
    return-void
.end method

.method public final ContentPadding(IIIII)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the content padding of a card view component."
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 218
    move-object v1, v7

    if-eqz v6, :cond_0

    .line 219
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v8, v2

    .line 220
    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v9, v3

    .line 221
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v10, v4

    .line 222
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v11, v5

    .line 223
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    .line 219
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setContentPadding(IIII)V

    .line 225
    :cond_0
    return-void
.end method

.method public final ContentPaddingBottom(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the bottom padding between the card\'s edges and the children of card view."
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 339
    return-void
.end method

.method public final ContentPaddingLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the left padding between the card\'s edges and the children of card view."
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    .line 315
    return-void
.end method

.method public final ContentPaddingRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the right padding between the card\'s edges and the children of card view."
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 331
    return-void
.end method

.method public final ContentPaddingTop(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the top padding between the card\'s edges and the children of card view."
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    .line 323
    return-void
.end method

.method public final CornerRadius(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The corner radius from the card view."
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 290
    return-void
.end method

.method public final CreateCardView(ILcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new card view component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    :try_start_0
    new-instance v9, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;)V

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 65
    move-object v5, v10

    move-object v10, v0

    move v11, v3

    move v12, v4

    move v6, v12

    move v4, v11

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    .line 1460
    move-object v3, v11

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v11, v4

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move v7, v10

    .line 1461
    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v11, v6

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move v8, v10

    .line 1462
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 1463
    const/4 v10, -0x2

    move v7, v10

    .line 1468
    :cond_0
    :goto_0
    move v10, v6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1469
    const/4 v10, -0x2

    move v8, v10

    .line 1474
    :cond_1
    :goto_1
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v7

    move v13, v8

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v10

    .line 1476
    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move v6, v10

    .line 1477
    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move v3, v10

    .line 1478
    move-object v10, v4

    move v11, v6

    move v12, v3

    move v13, v6

    move v14, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1479
    move-object v10, v4

    .line 65
    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 68
    move-object v3, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    move-object v9, v3

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    new-instance v10, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v1

    move-object v13, v5

    move-object v14, v2

    move-object v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 72
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 73
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    move-object v2, v9

    .line 75
    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->addView(Landroid/view/View;)V

    .line 76
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    move-object v9, v0

    move-object v10, v5

    move-object v4, v10

    move-object v3, v9

    .line 2428
    move-object v9, v4

    new-instance v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$1;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    move v13, v1

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$1;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2435
    move-object v9, v4

    new-instance v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    move v13, v1

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2443
    move-object v9, v4

    new-instance v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    move v13, v1

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    move-object v9, v0

    move-object v10, v5

    move-object v4, v10

    move-object v3, v9

    .line 3086
    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setClickable(Z)V

    .line 3087
    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setUseCompatPadding(Z)V

    .line 3088
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setPreventCornerOverlap(Z)V

    .line 3090
    move-object v9, v4

    move-object v10, v3

    iget v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardBackgroundColor(I)V

    .line 3091
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setRadius(F)V

    .line 3092
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardElevation(F)V

    .line 3093
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setMaxCardElevation(F)V

    .line 3094
    move-object v9, v4

    move-object v10, v3

    iget-boolean v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    iput-boolean v10, v9, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 3095
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    .line 3096
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move-object v11, v3

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v12, v3

    iget v12, v12, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    .line 3097
    invoke-static {v11, v12}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v11

    move-object v12, v3

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v13, v3

    iget v13, v13, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 3098
    invoke-static {v12, v13}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v12

    move-object v13, v3

    iget-object v13, v13, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v14, v3

    iget v14, v14, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 3099
    invoke-static {v13, v14}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v13

    .line 3095
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setContentPadding(IIII)V

    .line 3100
    move-object v9, v4

    move-object v10, v3

    iget v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeColor(I)V

    .line 3101
    move-object v9, v4

    move-object v10, v3

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeWidth(I)V

    .line 3102
    move-object v9, v4

    move-object v10, v3

    iget v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    move-object v11, v3

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    invoke-static {v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;->setRippleDrawable(Landroid/view/View;II)V

    .line 3104
    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    :goto_2
    return-void

    .line 1464
    :cond_2
    move v10, v4

    const/4 v11, -0x2

    if-ne v10, v11, :cond_0

    .line 1465
    const/4 v10, -0x1

    move v7, v10

    goto/16 :goto_0

    .line 1470
    :cond_3
    move v10, v6

    const/4 v11, -0x2

    if-ne v10, v11, :cond_1

    .line 1471
    const/4 v10, -0x1

    move v8, v10

    goto/16 :goto_1

    .line 80
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 81
    const-string/jumbo v9, "KodularDynamicCardView"

    move-object v10, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 83
    goto :goto_2
.end method

.method public final DeleteCardView(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a card view component with the given id."
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v2, v3

    .line 141
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 143
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 145
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 147
    const-string/jumbo v3, "KodularDynamicCardView"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 149
    goto :goto_0
.end method

.method public final Elevation(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The card view elevation value."
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 297
    return-void
.end method

.method public final FullClickable(IZ)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 233
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 236
    :cond_0
    return-void
.end method

.method public final FullClickable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    .line 307
    return-void
.end method

.method public final GetBackgroundColor(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the background color of a card view component."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 174
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 175
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    move v0, v2

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetCardViewById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the card view referenced by its id."
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 154
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 155
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 157
    move-object v0, v2

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetCornerRadius(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the corner radius of a card view component."
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 191
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 192
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getRadius()F

    move-result v2

    float-to-int v2, v2

    move v0, v2

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetElevation(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the elevation of a card view component."
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 209
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 210
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getCardElevation()F

    move-result v2

    float-to-int v2, v2

    move v0, v2

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetHeight(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the height of a card view component."
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 272
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 273
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getHeight()I

    move-result v2

    move v0, v2

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetWidth(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the width of a card view component."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 252
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 253
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getWidth()I

    move-result v2

    move v0, v2

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final LongClick(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple long click on a card view component with the specific id."
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LongClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 349
    return-void
.end method

.method public final SetBackgroundColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the background color of a card view component."
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 165
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 166
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardBackgroundColor(I)V

    .line 167
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    .line 169
    :cond_0
    return-void
.end method

.method public final SetCornerRadius(IF)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the corner radius of a card view component."
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 183
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setRadius(F)V

    .line 186
    :cond_0
    return-void
.end method

.method public final SetElevation(IF)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the elevation of a card view component."
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 200
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 201
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardElevation(F)V

    .line 202
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setMaxCardElevation(F)V

    .line 204
    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the height of a card view component."
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 261
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 262
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 263
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 264
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    .line 267
    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the width of a card view component."
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 241
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 242
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 243
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 244
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    .line 247
    :cond_0
    return-void
.end method

.method public final StrokeColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 393
    return-void
.end method

.method public final StrokeColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the stroke color to a card view component with the specific id."
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 398
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 399
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeColor(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public final StrokeWidth(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 378
    return-void
.end method

.method public final StrokeWidth(IF)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the stroke width to a card view component with the specific id."
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 383
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 384
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeWidth(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public final TouchColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the touch color also known as ripple color to a card view component."
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 367
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 371
    goto :goto_0
.end method

.method public final TouchDown(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch down on a card view component with the specific id."
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "TouchDown"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 359
    return-void
.end method

.method public final TouchUp(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch up on a card view component with the specific id."
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "TouchUp"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 354
    return-void
.end method
