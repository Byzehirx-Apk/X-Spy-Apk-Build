.class public Lcom/google/appinventor/components/runtime/MakeroidSnackbar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Snackbar"
    iconName = "images/snackbar.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Snackbar"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private buttonTextColor:I

.field private duration:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private textColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    .line 34
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    .line 35
    move-object v2, v0

    const v3, -0xbbbbbc

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    .line 36
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->activity:Landroid/app/Activity;

    .line 41
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 42
    const-string/jumbo v2, "Snackbar"

    const-string/jumbo v3, "Snackbar created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    move-object v0, v1

    return-object v0
.end method

.method private getColoredText(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "#%06X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const v7, 0xffffff

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "<font color=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private showSnackbar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string/jumbo v3, "Hello world! Snackbar example text"

    move-object v1, v3

    .line 122
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_2

    .line 123
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->getColoredText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    invoke-static {v4, v5, v6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 129
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    move-object v4, v2

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    .line 135
    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    .line 137
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v3

    .line 171
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    .line 172
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 178
    return-void

    .line 125
    :cond_2
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->activity:Landroid/app/Activity;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->getColoredText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    invoke-static {v4, v5, v6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_0
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the snackbar\'s background color."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the snackbar\'s background color."
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    .line 206
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v2, :cond_0

    .line 207
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v2

    .line 208
    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public ButtonTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for action button."
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    move v0, v1

    return v0
.end method

.method public ButtonTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    .line 74
    return-void
.end method

.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User clicked on the action button."
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 199
    return-void
.end method

.method public Dismiss()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss the snackbar."
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method

.method public Duration()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "specifies the length of time that the Snackbar is shown - either \"short\" or \"long\"."
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    move v0, v1

    return v0
.end method

.method public Duration(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "snackbar_duration"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    .line 56
    return-void
.end method

.method public IsShown()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true whether this snackbar is currently being shown."
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v1

    move v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public OnDismissed(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect the snackbar was dismissed. Possible results can be: \"UNDEFINED\", \"ACTION\", \"CONSECUTIVE\", \"MANUAL\", \"SWIPE\" or \"TIMEOUT\". You can find more information at: https://developer.android.com/reference/android/support/design/widget/Snackbar.Callback.html "
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnDismissed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 186
    return-void
.end method

.method public OnShown()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect the snackbar is shown."
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnShown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 191
    return-void
.end method

.method public Show(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Snackbar (message supports HTML formatting)"
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public ShowWithButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Snackbar with action button (message supports HTML formatting)"
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    move v0, v1

    return v0
.end method

.method public TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    .line 223
    move v2, v1

    if-nez v2, :cond_0

    .line 224
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    .line 226
    :cond_0
    return-void
.end method
