.class public Lcom/google/appinventor/components/runtime/KodularChatView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/chatView.png"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "glide.jar",
        "circleimageview.aar",
        "circleimageview.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kodular Chat View"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private automaticScrollDown:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private chatView:Landroid/widget/ScrollView;

.field private chatViewLinearLayout:Landroid/widget/LinearLayout;

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private countDateTimestamp:I

.field private countMessages:I

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private doubleTap:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private imagePath:Ljava/lang/String;

.field private isCompanion:Z

.field private lastId:I

.field private linearLayout:Landroid/widget/LinearLayout;

.field private messageFontSize:F

.field private messagesCornerRadius:F

.field private receiversBackgroundColor:I

.field private receiversMessageColor:I

.field private receiversTitleColor:I

.field private receiversTypefaceMessage:I

.field private receiversTypefaceMessageCustom:Ljava/lang/String;

.field private receiversTypefaceTitle:I

.field private receiversTypefaceTitleCustom:Ljava/lang/String;

.field private scrollbar:Z

.field private sendersBackgroundColor:I

.field private sendersMessageColor:I

.field private sendersTitleColor:I

.field private sendersTypefaceMessage:I

.field private sendersTypefaceMessageCustom:Ljava/lang/String;

.field private sendersTypefaceTitle:I

.field private sendersTypefaceTitleCustom:Ljava/lang/String;

.field private size:I

.field private swipeable:Z

.field private timestampCornerRadius:F

.field private timestampTextColor:I

.field private timestapeFontSize:F

.field private titleFontSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 57
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    .line 58
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 73
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    .line 74
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    .line 76
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    .line 77
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    .line 82
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    .line 83
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    .line 87
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    .line 88
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    .line 90
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    .line 91
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    .line 92
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    .line 99
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 102
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->CreateLayout()V

    .line 103
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    .line 108
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->BackgroundColor(I)V

    .line 109
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->AutomaticScrollDown(Z)V

    .line 110
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->Scrollbar(Z)V

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->Clickable(Z)V

    .line 112
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->Swipeable(Z)V

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->DoubleTap(Z)V

    .line 115
    move-object v2, v0

    const v3, -0x743db6

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersBackgroundColor(I)V

    .line 116
    move-object v2, v0

    const v3, -0x333334

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversBackgroundColor(I)V

    .line 118
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTitleColor(I)V

    .line 119
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTitleColor(I)V

    .line 121
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersMessageColor(I)V

    .line 122
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversMessageColor(I)V

    .line 124
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampTextColor(I)V

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceTitle(I)V

    .line 127
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceMessage(I)V

    .line 128
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceTitleImport(Ljava/lang/String;)V

    .line 129
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->SendersTypefaceMessageImport(Ljava/lang/String;)V

    .line 131
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceTitle(I)V

    .line 132
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceMessage(I)V

    .line 133
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceTitleImport(Ljava/lang/String;)V

    .line 134
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->ReceiversTypefaceMessageImport(Ljava/lang/String;)V

    .line 136
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampFontSize(F)V

    .line 137
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->TitleFontSize(F)V

    .line 138
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->MessagesFontSize(F)V

    .line 140
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->MessagesCornerRadius(F)V

    .line 141
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->TimestampCornerRadius(F)V

    .line 143
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 145
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->Width(I)V

    .line 146
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->Height(I)V

    .line 147
    const-string/jumbo v2, "Kodular Chat View"

    const-string/jumbo v3, "Kodular ChatView Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 148
    return-void
.end method

.method private CreateLayout()V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    .line 178
    move-object v1, v0

    new-instance v2, Landroid/widget/LinearLayout;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    .line 179
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    move-object v1, v0

    new-instance v2, Landroid/widget/ScrollView;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    .line 181
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    move-object v1, v0

    new-instance v2, Landroid/widget/LinearLayout;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    .line 187
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 191
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularChatView;)Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularChatView;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    move v0, v1

    return v0
.end method

.method private addCircleClickListener(Lde/hdodenhof/circleimageview/CircleImageView;Ljava/lang/String;I)V
    .locals 11

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setClickable(Z)V

    .line 323
    move-object v4, v1

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularChatView$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v3

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularChatView$1;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void
.end method

.method private addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 9

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :try_start_0
    new-instance v4, Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 311
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    move-object v5, v1

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    .line 312
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleClickListener(Lde/hdodenhof/circleimageview/CircleImageView;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    move-object v4, v3

    move-object v0, v4

    .line 317
    :goto_1
    return-object v0

    .line 311
    :cond_0
    move-object v5, v1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 316
    const-string/jumbo v4, "Kodular Chat View"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 317
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private addClickListener(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 32
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 610
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object v15, v2

    new-instance v16, Lcom/google/appinventor/components/runtime/KodularChatView$3;

    move-object/from16 v31, v16

    move-object/from16 v16, v31

    move-object/from16 v17, v31

    move-object/from16 v18, v1

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v30, v13

    invoke-direct/range {v17 .. v30}, Lcom/google/appinventor/components/runtime/KodularChatView$3;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    return-void
.end method

.method private addDateTimestamp(Ljava/lang/String;III)V
    .locals 14

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    const-string/jumbo v7, "Kodular Chat View"

    const-string/jumbo v8, "Case 1 - Date Timestamp - Date string is empty but needed."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 276
    .line 305
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v7, Landroid/widget/LinearLayout;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 279
    move-object v5, v8

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 280
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 281
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    .line 282
    move-object v7, v5

    const-string/jumbo v8, "timestampLayout"

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 283
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 285
    move-object v7, v0

    const-string/jumbo v8, "timestamp"

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 286
    move-object v1, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 288
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 289
    move-object v4, v8

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 290
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 293
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 294
    move-object v4, v8

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    move-object v7, v4

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 297
    move v7, v3

    const v8, 0xffffff

    if-ne v7, v8, :cond_1

    const/4 v7, -0x1

    :goto_1
    move v6, v7

    .line 298
    move-object v7, v0

    move-object v8, v5

    move v9, v3

    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V

    .line 299
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDownIfNeeded()V

    .line 305
    goto/16 :goto_0

    .line 297
    :cond_1
    move v7, v3

    goto :goto_1
.end method

.method private addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 39

    .prologue
    .line 332
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_0

    move/from16 v24, v10

    if-eqz v24, :cond_0

    .line 334
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "Case 1 - Imagepath is empty but needed."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 335
    .line 491
    :goto_0
    return-void

    .line 336
    :cond_0
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    move/from16 v24, v10

    if-nez v24, :cond_1

    .line 338
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "Case 2 - Message is empty but needed."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 339
    goto :goto_0

    .line 340
    :cond_1
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2

    move/from16 v24, v10

    if-nez v24, :cond_2

    .line 342
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "Case 3 - Title, Message and Timestamp are empty but needed."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 343
    goto :goto_0

    .line 344
    :cond_2
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_3

    move/from16 v24, v15

    if-eqz v24, :cond_3

    .line 346
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "Case 4 - File is empty but needed."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 347
    goto :goto_0

    .line 349
    :cond_3
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 350
    move-object/from16 v16, v25

    move/from16 v25, v7

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setId(I)V

    .line 351
    move-object/from16 v24, v2

    move/from16 v25, v7

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    .line 352
    move-object/from16 v24, v2

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    .line 353
    move-object/from16 v24, v16

    const-string/jumbo v25, "addMessageLayout"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 354
    const/16 v24, 0x0

    move-object/from16 v17, v24

    .line 355
    const/16 v24, 0x0

    move-object/from16 v18, v24

    .line 356
    const/16 v24, 0x0

    move-object/from16 v19, v24

    .line 357
    const/16 v24, 0x0

    move-object/from16 v20, v24

    .line 358
    const/16 v24, 0x0

    move-object/from16 v21, v24

    .line 359
    const/16 v24, 0x0

    move-object/from16 v22, v24

    .line 360
    move-object/from16 v24, v16

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_4

    .line 363
    move-object/from16 v24, v2

    const-string/jumbo v25, "title"

    move-object/from16 v26, v4

    invoke-direct/range {v24 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 364
    move-object/from16 v17, v25

    move-object/from16 v25, v2

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 366
    move-object/from16 v24, v2

    move/from16 v25, v8

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    move/from16 v30, v0

    invoke-direct/range {v24 .. v30}, Lcom/google/appinventor/components/runtime/KodularChatView;->fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 369
    :cond_4
    move/from16 v24, v10

    if-eqz v24, :cond_5

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 371
    move-object/from16 v24, v2

    move-object/from16 v25, v9

    :try_start_0
    invoke-direct/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    move-object/from16 v18, v24

    .line 374
    .line 377
    :cond_5
    :goto_1
    move/from16 v24, v15

    if-eqz v24, :cond_6

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    .line 379
    move-object/from16 v24, v2

    move-object/from16 v25, v14

    :try_start_1
    invoke-direct/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    move-object/from16 v19, v24

    .line 382
    .line 385
    :cond_6
    :goto_2
    move/from16 v24, v12

    if-eqz v24, :cond_7

    move-object/from16 v24, v11

    if-eqz v24, :cond_7

    .line 387
    move-object/from16 v24, v11

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v24

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 388
    move-object/from16 v22, v25

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 391
    .line 394
    :cond_7
    :goto_3
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_8

    .line 395
    move-object/from16 v24, v2

    const-string/jumbo v25, "message"

    move-object/from16 v26, v5

    invoke-direct/range {v24 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 396
    move-object/from16 v20, v25

    move-object/from16 v25, v2

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    move-object/from16 v24, v20

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 398
    move-object/from16 v24, v2

    move/from16 v25, v8

    move-object/from16 v26, v20

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    move/from16 v30, v0

    invoke-direct/range {v24 .. v30}, Lcom/google/appinventor/components/runtime/KodularChatView;->fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 401
    :cond_8
    move-object/from16 v24, v6

    if-eqz v24, :cond_9

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_9

    .line 402
    move-object/from16 v24, v2

    const-string/jumbo v25, "timestamp"

    move-object/from16 v26, v6

    invoke-direct/range {v24 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v21, v24

    .line 403
    move-object/from16 v24, v2

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v24

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 404
    move-object/from16 v23, v25

    const v25, 0x800005

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 405
    move-object/from16 v24, v21

    move-object/from16 v25, v23

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    move-object/from16 v24, v21

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 409
    :cond_9
    const/16 v24, -0x2

    move/from16 v23, v24

    .line 411
    move-object/from16 v24, v18

    if-nez v24, :cond_a

    move-object/from16 v24, v22

    if-nez v24, :cond_a

    move-object/from16 v24, v19

    if-eqz v24, :cond_b

    .line 412
    :cond_a
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/KodularChatView;->isScreenOrientationPortrait()Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v24, 0x32

    :goto_4
    move/from16 v23, v24

    .line 415
    :cond_b
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    move/from16 v26, v23

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    const/16 v26, -0x2

    .line 416
    :goto_5
    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v11, v24

    .line 418
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 419
    move-object/from16 v24, v11

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v26, v0

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v28, v0

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    invoke-virtual/range {v24 .. v28}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 421
    :cond_c
    move-object/from16 v24, v11

    const/high16 v25, 0x3f000000    # 0.5f

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 423
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "Send now as sender: "

    move/from16 v26, v8

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 424
    move/from16 v24, v8

    if-eqz v24, :cond_16

    .line 425
    move-object/from16 v24, v11

    const v25, 0x800005

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 426
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v27, v20

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    move/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    move/from16 v30, v0

    invoke-direct/range {v24 .. v30}, Lcom/google/appinventor/components/runtime/KodularChatView;->messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 431
    :goto_6
    move-object/from16 v24, v21

    if-eqz v24, :cond_d

    .line 432
    move-object/from16 v24, v21

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    :cond_d
    move-object/from16 v24, v16

    move-object/from16 v25, v11

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    move-object/from16 v24, v17

    if-eqz v24, :cond_e

    .line 439
    move-object/from16 v24, v16

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    :cond_e
    move-object/from16 v24, v18

    if-eqz v24, :cond_f

    .line 442
    move-object/from16 v24, v16

    move-object/from16 v25, v18

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    :cond_f
    move-object/from16 v24, v22

    if-eqz v24, :cond_10

    .line 445
    move-object/from16 v24, v16

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    :cond_10
    move-object/from16 v24, v19

    if-eqz v24, :cond_11

    .line 448
    move-object/from16 v24, v16

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    :cond_11
    move-object/from16 v24, v20

    if-eqz v24, :cond_12

    .line 451
    move-object/from16 v24, v16

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    :cond_12
    move-object/from16 v24, v21

    if-eqz v24, :cond_13

    .line 454
    move-object/from16 v24, v16

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    :cond_13
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v20

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move/from16 v36, v15

    move-object/from16 v37, v3

    invoke-direct/range {v24 .. v37}, Lcom/google/appinventor/components/runtime/KodularChatView;->addClickListener(Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 460
    move-object/from16 v24, v3

    if-eqz v24, :cond_18

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_18

    .line 461
    const-string/jumbo v24, "Kodular Chat View"

    const-string/jumbo v25, "The user wants a user image near the message."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 462
    move-object/from16 v24, v2

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v24

    move-object/from16 v4, v24

    .line 464
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 465
    move-object/from16 v5, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 467
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const/16 v27, 0x2d

    .line 468
    invoke-static/range {v26 .. v27}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v26

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const/16 v28, 0x2d

    .line 469
    invoke-static/range {v27 .. v28}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v27

    invoke-direct/range {v25 .. v27}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v38, v24

    move-object/from16 v24, v38

    move-object/from16 v25, v38

    .line 470
    move-object/from16 v6, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v26, v0

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 472
    move/from16 v24, v8

    if-eqz v24, :cond_17

    .line 473
    move-object/from16 v24, v4

    const v25, 0x800005

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 474
    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v26, v0

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v28, v0

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    invoke-virtual/range {v24 .. v28}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 475
    move-object/from16 v24, v5

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    move-object/from16 v24, v5

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v27, v7

    invoke-direct/range {v25 .. v27}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-virtual/range {v24 .. v26}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :goto_7
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    .line 490
    :goto_8
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDownIfNeeded()V

    .line 491
    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v24

    move-object/from16 v23, v24

    .line 373
    const-string/jumbo v24, "Kodular Chat View"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    const-string/jumbo v27, "Unable to load image. Reason: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_1

    .line 380
    :catch_1
    move-exception v24

    move-object/from16 v23, v24

    .line 381
    const-string/jumbo v24, "Kodular Chat View"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v38, v25

    move-object/from16 v25, v38

    move-object/from16 v26, v38

    const-string/jumbo v27, "Unable to load video image thumbnail. Reason: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_2

    .line 389
    :catch_2
    move-exception v24

    move-object/from16 v23, v24

    .line 390
    const-string/jumbo v24, "Kodular Chat View"

    move-object/from16 v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_3

    .line 412
    :cond_14
    const/16 v24, 0x23

    goto/16 :goto_4

    .line 415
    :cond_15
    move-object/from16 v26, v2

    .line 416
    invoke-direct/range {v26 .. v26}, Lcom/google/appinventor/components/runtime/KodularChatView;->displayWidth()I

    move-result v26

    const/16 v27, 0x64

    div-int/lit8 v26, v26, 0x64

    move/from16 v27, v23

    mul-int v26, v26, v27

    goto/16 :goto_5

    .line 428
    :cond_16
    move-object/from16 v24, v11

    const v25, 0x800003

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v27, v20

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    move/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    move/from16 v30, v0

    invoke-direct/range {v24 .. v30}, Lcom/google/appinventor/components/runtime/KodularChatView;->messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto/16 :goto_6

    .line 479
    :cond_17
    move-object/from16 v24, v4

    const v25, 0x800003

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 480
    move-object/from16 v24, v4

    const/16 v25, 0x0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v26, v0

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move/from16 v28, v0

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    invoke-virtual/range {v24 .. v28}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    move-object/from16 v24, v5

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v27, v7

    invoke-direct/range {v25 .. v27}, Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleImage(Ljava/lang/String;I)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-virtual/range {v24 .. v26}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    move-object/from16 v24, v5

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 488
    :cond_18
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8
.end method

.method private displayWidth()I
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 570
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move v0, v1

    return v0
.end method

.method private fontHelper(ZLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    .prologue
    .line 593
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v1

    if-eqz v7, :cond_1

    .line 594
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 595
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 606
    :goto_0
    return-void

    .line 597
    :cond_0
    move-object v7, v2

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    goto :goto_0

    .line 600
    :cond_1
    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 601
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v8, v2

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 603
    :cond_2
    move-object v7, v2

    move v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 606
    goto :goto_0
.end method

.method private getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 521
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 525
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v2

    goto :goto_0
.end method

.method private getNewImageView(Ljava/lang/String;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 10

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 513
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    move-object v4, v1

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    move-object v5, v2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    .line 514
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularChatView;->getLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v6, 0x5

    div-int/lit8 v5, v5, 0x5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v8, 0x5

    div-int/lit8 v7, v7, 0x5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    .line 516
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 513
    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method private getNewTextView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 11

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/widget/TextView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 505
    move-object v3, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 506
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 507
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v7, 0x5

    div-int/lit8 v6, v6, 0x5

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v9, 0x5

    div-int/lit8 v8, v8, 0x5

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 508
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method private getView(I)Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->form:Lcom/google/appinventor/components/runtime/Form;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 219
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 218
    const-string/jumbo v2, "Kodular Chat View"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 219
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private isScreenOrientationPortrait()Z
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 589
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private messageHelper(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 13

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v8, v4

    const v9, 0xffffff

    if-ne v8, v9, :cond_2

    const/4 v8, -0x1

    :goto_0
    move v7, v8

    .line 533
    move-object v8, v0

    move-object v9, v1

    move v10, v4

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V

    .line 534
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 535
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    :cond_0
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 538
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    :cond_1
    return-void

    .line 532
    :cond_2
    move v8, v4

    goto :goto_0
.end method

.method private removeMessage(I)V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    :try_start_0
    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 197
    move-object v1, v3

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "Kodular Chat View"

    const-string/jumbo v3, "Can not perfom \'remove Message\'. The object is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 199
    .line 212
    :goto_0
    return-void

    .line 201
    :cond_0
    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 203
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "addMessageLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    goto :goto_0

    .line 206
    :cond_1
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_2
    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 210
    const-string/jumbo v2, "Kodular Chat View"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 212
    goto :goto_0
.end method

.method private scrollDown(I)V
    .locals 8

    .prologue
    .line 544
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    :try_start_0
    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 545
    move-object v1, v3

    if-nez v2, :cond_0

    .line 546
    const-string/jumbo v2, "Kodular Chat View"

    const-string/jumbo v3, "Can not perfom \'scroll Down\'. The object is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 547
    .line 553
    :goto_0
    return-void

    .line 549
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularChatView;->size:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_0

    .line 550
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 551
    const-string/jumbo v2, "Kodular Chat View"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 553
    goto :goto_0
.end method

.method private scrollDownIfNeeded()V
    .locals 6

    .prologue
    .line 494
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    if-eqz v1, :cond_0

    .line 495
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularChatView$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularChatView$2;-><init>(Lcom/google/appinventor/components/runtime/KodularChatView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 501
    :cond_0
    return-void
.end method

.method private setShape(Landroid/view/View;IIF)V
    .locals 10

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 576
    move-object v5, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 577
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularChatView;->activity:Landroid/app/Activity;

    move v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 578
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 579
    move-object v6, v5

    const/4 v7, 0x2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 580
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 581
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 583
    const-string/jumbo v6, "Kodular Chat View"

    move-object v7, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 585
    goto :goto_0
.end method

.method private updateAppearance()V
    .locals 3

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 557
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    if-nez v1, :cond_0

    .line 558
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 566
    :goto_0
    return-void

    .line 560
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 561
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 564
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 566
    goto :goto_0
.end method

.method private updateMessage(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 10

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v0

    move v8, v2

    :try_start_0
    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    .line 226
    move-object v2, v8

    if-nez v7, :cond_0

    .line 227
    const-string/jumbo v7, "Kodular Chat View"

    const-string/jumbo v8, "Can not perfom \'update Message\'. The object is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 228
    .line 245
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 231
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    .line 232
    move-object v6, v8

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 233
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 234
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 235
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    .line 236
    move-object v6, v8

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    move-object v7, v6

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 244
    :cond_2
    goto :goto_0

    .line 242
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 243
    const-string/jumbo v7, "Kodular Chat View"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 245
    goto :goto_0
.end method

.method private updateUserImage(ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    move v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 250
    move-object v1, v6

    if-nez v5, :cond_0

    .line 251
    const-string/jumbo v5, "Kodular Chat View"

    const-string/jumbo v6, "Can not perfom \'update User Image\'. The object is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 252
    .line 270
    :goto_0
    return-void

    .line 255
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object v1, v5

    .line 260
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 261
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 262
    move-object v4, v6

    instance-of v5, v5, Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz v5, :cond_2

    .line 263
    move-object v5, v4

    check-cast v5, Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v4, v5

    .line 264
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularChatView;->context:Landroid/content/Context;

    move-object v6, v2

    if-nez v6, :cond_3

    const-string/jumbo v6, ""

    :goto_2
    move-object v7, v4

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/appinventor/components/runtime/KodularChatView;->isCompanion:Z

    invoke-static {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_3
    move-object v6, v2

    goto :goto_2

    .line 269
    :cond_4
    goto :goto_0

    .line 267
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 268
    const-string/jumbo v5, "Kodular Chat View"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 270
    goto :goto_0
.end method


# virtual methods
.method public AddComponentMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/AndroidViewComponent;IZ)V
    .locals 22
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple component message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty. Make sure that the component is VISIBLE on the screen when you try to add it here. It will be then removed automatic from the screen and only visible again in the chat view."
    .end annotation

    .prologue
    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v6

    move v14, v7

    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v17, v5

    const/16 v18, 0x1

    const-string/jumbo v19, ""

    const-string/jumbo v20, ""

    const/16 v21, 0x0

    invoke-direct/range {v8 .. v21}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 706
    return-void
.end method

.method public AddDateTimestamp(Ljava/lang/String;III)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple date timestamp into the chat view. You NEED to write a date, else this block will do nothing. This means the field \'date\' can NOT be empty. Timestamp messages are not clickable."
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularChatView;->addDateTimestamp(Ljava/lang/String;III)V

    .line 698
    return-void
.end method

.method public AddFileMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 23
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple file message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    .prologue
    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v6

    move v14, v7

    move v15, v8

    const-string/jumbo v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/16 v22, 0x1

    invoke-direct/range {v9 .. v22}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 690
    return-void
.end method

.method public AddImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 22
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple image message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    .prologue
    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    move v13, v6

    move v14, v7

    move-object v15, v4

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, ""

    const-string/jumbo v20, ""

    const/16 v21, 0x0

    invoke-direct/range {v8 .. v21}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 684
    return-void
.end method

.method public AddMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new simple message into the chat view. If you do not want a user image or title or message or timestamp, then let the field empty."
    .end annotation

    .prologue
    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    const-string/jumbo v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string/jumbo v18, ""

    const-string/jumbo v19, ""

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v20}, Lcom/google/appinventor/components/runtime/KodularChatView;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/google/appinventor/components/runtime/AndroidViewComponent;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 678
    return-void
.end method

.method public AutomaticScrollDown(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the chat view will scroll down when a new message was send."
    .end annotation

    .prologue
    .line 874
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    .line 875
    return-void
.end method

.method public AutomaticScrollDown()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->automaticScrollDown:Z

    move v0, v1

    return v0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .prologue
    .line 894
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 887
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundColor:I

    .line 888
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateAppearance()V

    .line 889
    return-void
.end method

.method public ClearChatView()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes all messages and timestamps from the chat view."
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 765
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatViewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 766
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    .line 767
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 770
    const-string/jumbo v2, "Kodular Chat View"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 772
    goto :goto_0
.end method

.method public Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event."
    .end annotation

    .prologue
    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v0

    const-string/jumbo v13, "Click"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move-object/from16 v17, v2

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    move-object/from16 v17, v3

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x3

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x4

    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x5

    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x6

    move-object/from16 v17, v7

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x7

    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x8

    move-object/from16 v17, v9

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v10

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0xa

    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v12

    .line 929
    return-void
.end method

.method public Clickable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .prologue
    .line 951
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    .line 952
    return-void
.end method

.method public Clickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->clickable:Z

    move v0, v1

    return v0
.end method

.method public CountDateTimestamp()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the number of all date timestamps. Normal messages are not included."
    .end annotation

    .prologue
    .line 671
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->countDateTimestamp:I

    move v0, v1

    return v0
.end method

.method public CountMessages()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the number of all messages. \'Date Timestamp\' messages are not included."
    .end annotation

    .prologue
    .line 666
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->countMessages:I

    move v0, v1

    return v0
.end method

.method public DoubleTap(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component enabled for double taps or not."
    .end annotation

    .prologue
    .line 964
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    .line 965
    return-void
.end method

.method public DoubleTap()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->doubleTap:Z

    move v0, v1

    return v0
.end method

.method public DoubleTapClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Double tap click listener event."
    .end annotation

    .prologue
    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v0

    const-string/jumbo v13, "DoubleTapClick"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move-object/from16 v17, v2

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    move-object/from16 v17, v3

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x3

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x4

    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x5

    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x6

    move-object/from16 v17, v7

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x7

    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x8

    move-object/from16 v17, v9

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v10

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0xa

    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v12

    .line 939
    return-void
.end method

.method public GetLastUsedId()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the last used id."
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->lastId:I

    move v0, v1

    return v0
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 170
    const/4 v2, -0x2

    move v1, v2

    .line 172
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 173
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 902
    .line 914
    :goto_0
    return-void

    .line 904
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_1
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    .line 905
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 906
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 908
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .line 913
    :cond_1
    :goto_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateAppearance()V

    .line 914
    goto :goto_0

    .line 904
    :cond_2
    move-object v3, v1

    goto :goto_1

    .line 909
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 910
    const-string/jumbo v2, "Kodular Chat View"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public LongClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Long click listener event."
    .end annotation

    .prologue
    .line 933
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v0

    const-string/jumbo v13, "LongClick"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move-object/from16 v17, v2

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x2

    move-object/from16 v17, v3

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x3

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x4

    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x5

    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x6

    move-object/from16 v17, v7

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x7

    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x8

    move-object/from16 v17, v9

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x9

    move-object/from16 v17, v10

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0xa

    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v12

    .line 934
    return-void
.end method

.method public MessagesCornerRadius(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1049
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->messagesCornerRadius:F

    .line 1050
    return-void
.end method

.method public MessagesFontSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1080
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->messageFontSize:F

    .line 1081
    return-void
.end method

.method public ReceiversBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 819
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public ReceiversBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for receiver\'s messages."
    .end annotation

    .prologue
    .line 814
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversBackgroundColor:I

    .line 815
    return-void
.end method

.method public ReceiversMessageColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 843
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    move v0, v1

    return v0
.end method

.method public ReceiversMessageColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for receivers\'s messages."
    .end annotation

    .prologue
    .line 838
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversMessageColor:I

    .line 839
    return-void
.end method

.method public ReceiversTitleColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    move v0, v1

    return v0
.end method

.method public ReceiversTitleColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for receivers\'s title messages."
    .end annotation

    .prologue
    .line 826
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTitleColor:I

    .line 827
    return-void
.end method

.method public ReceiversTypefaceMessage(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessage:I

    .line 1027
    return-void
.end method

.method public ReceiversTypefaceMessageImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1040
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1041
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceMessageCustom:Ljava/lang/String;

    .line 1043
    :cond_0
    return-void
.end method

.method public ReceiversTypefaceTitle(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1019
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitle:I

    .line 1020
    return-void
.end method

.method public ReceiversTypefaceTitleImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1032
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1033
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->receiversTypefaceTitleCustom:Ljava/lang/String;

    .line 1035
    :cond_0
    return-void
.end method

.method public RemoveMessage(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a message or timestamp from the chat view."
    .end annotation

    .prologue
    .line 758
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->removeMessage(I)V

    .line 759
    return-void
.end method

.method public ScrollTo(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scroll to a specific message in the chat view with the given id."
    .end annotation

    .prologue
    .line 656
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollDown(I)V

    .line 657
    return-void
.end method

.method public Scrollbar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar."
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    .line 862
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->chatView:Landroid/widget/ScrollView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 863
    return-void
.end method

.method public Scrollbar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 867
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->scrollbar:Z

    move v0, v1

    return v0
.end method

.method public SendersBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 783
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public SendersBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF8BC24A"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for sender\'s messages."
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersBackgroundColor:I

    .line 779
    return-void
.end method

.method public SendersMessageColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    move v0, v1

    return v0
.end method

.method public SendersMessageColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for sender\'s messages."
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersMessageColor:I

    .line 803
    return-void
.end method

.method public SendersTitleColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    move v0, v1

    return v0
.end method

.method public SendersTitleColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for sender\'s title messages."
    .end annotation

    .prologue
    .line 790
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTitleColor:I

    .line 791
    return-void
.end method

.method public SendersTypefaceMessage(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 996
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessage:I

    .line 997
    return-void
.end method

.method public SendersTypefaceMessageImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1010
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1011
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceMessageCustom:Ljava/lang/String;

    .line 1013
    :cond_0
    return-void
.end method

.method public SendersTypefaceTitle(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 989
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitle:I

    .line 990
    return-void
.end method

.method public SendersTypefaceTitleImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1002
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1003
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->sendersTypefaceTitleCustom:Ljava/lang/String;

    .line 1005
    :cond_0
    return-void
.end method

.method public Swipe(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Swipe listener event. The direction value returns \'1\' for right-to-left swipes, \'2\' for left-to-right swipes \'3\' for bottom-to-top swipes and \'4\' for top-to-bottom swipes"
    .end annotation

    .prologue
    .line 945
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object v13, v0

    const-string/jumbo v14, "Swipe"

    const/16 v15, 0xc

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move/from16 v18, v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    move-object/from16 v18, v2

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x2

    move-object/from16 v18, v3

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x3

    move-object/from16 v18, v4

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x4

    move-object/from16 v18, v5

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x5

    move/from16 v18, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x6

    move/from16 v18, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x7

    move-object/from16 v18, v8

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x8

    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x9

    move-object/from16 v18, v10

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0xa

    move-object/from16 v18, v11

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0xb

    move/from16 v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static {v13, v14, v15}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v13

    .line 946
    return-void
.end method

.method public Swipeable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you can swipe with your fingers through views."
    .end annotation

    .prologue
    .line 977
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    .line 978
    return-void
.end method

.method public Swipeable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 982
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->swipeable:Z

    move v0, v1

    return v0
.end method

.method public TimestampCornerRadius(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1056
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampCornerRadius:F

    .line 1057
    return-void
.end method

.method public TimestampFontSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1064
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->timestapeFontSize:F

    .line 1065
    return-void
.end method

.method public TimestampTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 855
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    move v0, v1

    return v0
.end method

.method public TimestampTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color for the timestamp."
    .end annotation

    .prologue
    .line 850
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->timestampTextColor:I

    .line 851
    return-void
.end method

.method public TitleFontSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1072
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularChatView;->titleFontSize:F

    .line 1073
    return-void
.end method

.method public UpdateMessageBackgroundColor(II)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the background color of a chat view message."
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/KodularChatView;->getView(I)Landroid/widget/LinearLayout;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 733
    move-object v1, v6

    if-nez v5, :cond_0

    .line 734
    const-string/jumbo v5, "Kodular Chat View"

    const-string/jumbo v6, "Can not perfom \'Update Message Background Color\'. The object is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 735
    .line 754
    :goto_0
    return-void

    .line 737
    :cond_0
    move v5, v2

    if-nez v5, :cond_2

    .line 738
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularChatView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 743
    :goto_1
    const/high16 v5, 0x41400000    # 12.0f

    move v3, v5

    .line 744
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 745
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timestampLayout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 746
    const/high16 v5, 0x41200000    # 10.0f

    move v3, v5

    .line 749
    :cond_1
    move v5, v2

    const v6, 0xffffff

    if-ne v5, v6, :cond_3

    const/4 v5, -0x1

    :goto_2
    move v4, v5

    .line 750
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v4

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/KodularChatView;->setShape(Landroid/view/View;IIF)V

    .line 753
    goto :goto_0

    .line 740
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 741
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 751
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 752
    const-string/jumbo v5, "Kodular Chat View"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 754
    goto :goto_0

    .line 749
    :cond_3
    move v5, v2

    goto :goto_2
.end method

.method public UpdateMessageContent(ILjava/lang/String;I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the message content of a chat view message."
    .end annotation

    .prologue
    .line 715
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "message"

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    .line 716
    return-void
.end method

.method public UpdateTimestampContent(ILjava/lang/String;I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the timestamp content of a chat view message."
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "timestamp"

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    .line 721
    return-void
.end method

.method public UpdateTitleContent(ILjava/lang/String;I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the title content of a chat view message."
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "title"

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateMessage(Ljava/lang/String;ILjava/lang/String;I)V

    .line 711
    return-void
.end method

.method public UpdateUserImage(ILjava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the user image of a chat view message. The image can only be updated if there was before a old image."
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularChatView;->updateUserImage(ILjava/lang/String;)V

    .line 727
    return-void
.end method

.method public UserImageClick(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event for the user image."
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "UserImageClick"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 924
    return-void
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 161
    const/4 v2, -0x2

    move v1, v2

    .line 163
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 164
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularChatView;->linearLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method
