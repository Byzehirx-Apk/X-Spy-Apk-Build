.class public final Lcom/google/appinventor/components/runtime/KodularStateProgressBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "in ode"
    iconName = "images/stateProgressBar.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "stateProgressBar.aar",
        "stateProgressBar.jar"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 42
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    .line 43
    move-object v2, v0

    new-instance v3, Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/kofigyan/stateprogressbar/StateProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    .line 44
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;-><init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setOnStateItemClickListener(Lcom/kofigyan/stateprogressbar/listeners/OnStateItemClickListener;)V

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;-><init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setOnErrorListener(Lcom/kofigyan/stateprogressbar/listeners/OnStateErrorListener;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 58
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 60
    move-object v2, v0

    const-string/jumbo v3, "Item 1, Item 2, Item 3, Item 4, Item 5"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->ElementsFromString(Ljava/lang/String;)V

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionTypeface(I)V

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTypeface(I)V

    .line 65
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionTypefaceImport(Ljava/lang/String;)V

    .line 66
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTypefaceImport(Ljava/lang/String;)V

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberIsDescending(Z)V

    .line 69
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->JustifyMultilineDescription(Z)V

    .line 70
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->AnimationToCurrentState(Z)V

    .line 72
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->MaxDescriptionLine(I)V

    .line 76
    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->MaxStateNumber(I)V

    .line 78
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->CurrentStateNumber(I)V

    .line 80
    move-object v2, v0

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->AnimationDuration(I)V

    .line 82
    move-object v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateProgressBarHeight(F)V

    .line 83
    move-object v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTextSize(F)V

    .line 84
    move-object v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateLineThickness(F)V

    .line 85
    move-object v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->DescriptionTopSpaceIncrementer(F)V

    .line 86
    move-object v2, v0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionSize(F)V

    .line 87
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->DescriptionLinesSpacing(F)V

    .line 89
    move-object v2, v0

    const v3, -0xb350b0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->ForegroundColor(I)V

    .line 90
    move-object v2, v0

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->BackgroundColor(I)V

    .line 92
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberForegroundColor(I)V

    .line 93
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberBackgroundColor(I)V

    .line 95
    move-object v2, v0

    const v3, -0xb350b0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->CurrentStateDescriptionColor(I)V

    .line 96
    move-object v2, v0

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionColor(I)V

    .line 98
    const-string/jumbo v2, "Kodular StateProgress"

    const-string/jumbo v3, "Kodular StateProgressBar Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99
    return-void
.end method


# virtual methods
.method public final AllStatesCompleted(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true all states are completed."
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setAllStatesCompleted(Z)V

    .line 119
    return-void
.end method

.method public final AllStatesCompleted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \'All States Completed\' is enabled."
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isAllStatesCompletedEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final AnimationDuration()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the animation duration in milliseconds."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getAnimationDuration()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final AnimationDuration(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "250"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the animation duration in milliseconds. Example:  use 1000 for 1 second."
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setAnimationDuration(I)V

    .line 182
    return-void
.end method

.method public final AnimationToCurrentState(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the states will use a animation when they changed."
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->enableAnimationToCurrentState(Z)V

    .line 169
    return-void
.end method

.method public final AnimationToCurrentState()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isEnableAnimationToCurrentState()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color."
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getBackgroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the background color."
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setBackgroundColor(I)V

    .line 341
    return-void
.end method

.method public final CurrentStateDescriptionColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current state description color."
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getCurrentStateDescriptionColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final CurrentStateDescriptionColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the current state description color."
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateDescriptionColor(I)V

    .line 377
    return-void
.end method

.method public final CurrentStateNumber()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current state number."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getCurrentStateNumber()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final CurrentStateNumber(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "state_number"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the current state number."
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxStateNumber()I

    move-result v3

    move v2, v3

    .line 231
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_4

    .line 233
    :cond_0
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    move v4, v2

    if-gt v3, v4, :cond_1

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v4, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->TWO:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v3, v4}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_1
    move v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v3, v1

    move v4, v2

    if-gt v3, v4, :cond_2

    .line 236
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v4, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->THREE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v3, v4}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 237
    :cond_2
    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v3, v1

    move v4, v2

    if-gt v3, v4, :cond_3

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v4, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FOUR:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v3, v4}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 239
    :cond_3
    move v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    move v3, v1

    move v4, v2

    if-gt v3, v4, :cond_4

    .line 240
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v4, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FIVE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v3, v4}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 243
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v4, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->ONE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v3, v4}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    .line 245
    goto :goto_0
.end method

.method public final DescriptionLinesSpacing()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the description lines spacing."
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getDescriptionLinesSpacing()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final DescriptionLinesSpacing(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the description lines spacing."
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setDescriptionLinesSpacing(F)V

    .line 317
    return-void
.end method

.method public final DescriptionTopSpaceIncrementer()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the description top space incrementer."
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getDescriptionTopSpaceIncrementer()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final DescriptionTopSpaceIncrementer(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the description top space incrementer."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setDescriptionTopSpaceIncrementer(F)V

    .line 293
    return-void
.end method

.method public final ElementsFromString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Item 1, Item 2, Item 3, Item 4, Item 5"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The State Progress Bar elements specified as a string with the items separated by commas such as: Item 1, Item 2, Item 3, Item 4, Item 5. Each word before the comma will be an element in the list. You can add maximum 5 items."
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    move-object v2, v1

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionData([Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final ErrorOccurred(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when a error occurred."
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ErrorOccurred"

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

    .line 114
    return-void
.end method

.method public final ForegroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the foreground color."
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getForegroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final ForegroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the foreground color."
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setForegroundColor(I)V

    .line 329
    return-void
.end method

.method public final JustifyMultilineDescription(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true justify multiline description is enabled."
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setJustifyMultilineDescription(Z)V

    .line 156
    return-void
.end method

.method public final JustifyMultilineDescription()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isDescriptionMultiline()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final MaxDescriptionLine()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the maximum description line."
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxDescriptionLine()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final MaxDescriptionLine(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the maximum description line."
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxDescriptionLine(I)V

    .line 194
    return-void
.end method

.method public final MaxStateNumber()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the maximum state number."
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxStateNumber()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final MaxStateNumber(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "state_number"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the maximum state number."
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 206
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v3, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->ONE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    .line 219
    :goto_0
    return-void

    .line 207
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v3, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->TWO:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 209
    :cond_1
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 210
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v3, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->THREE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 211
    :cond_2
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 212
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v3, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FOUR:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    goto :goto_0

    .line 217
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v3, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FIVE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    .line 219
    goto :goto_0
.end method

.method public final StateDescriptionColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state description color."
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateDescriptionColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateDescriptionColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state description color."
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionColor(I)V

    .line 389
    return-void
.end method

.method public final StateDescriptionSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state description size."
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateDescriptionSize()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateDescriptionSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state description size."
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionSize(F)V

    .line 305
    return-void
.end method

.method public final StateDescriptionTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionTypefaceFile(Landroid/graphics/Typeface;)V

    .line 402
    return-void
.end method

.method public final StateDescriptionTypefaceImport(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font for state description typeface."
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 409
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionTypefaceFile(Landroid/graphics/Typeface;)V

    .line 411
    :cond_0
    return-void
.end method

.method public final StateItemClick(IZ)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when a state item was clicked."
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "StateItemClick"

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

    move v8, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 109
    return-void
.end method

.method public final StateLineThickness()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state line thickness."
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateLineThickness()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateLineThickness(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state line thickness."
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateLineThickness(F)V

    .line 281
    return-void
.end method

.method public final StateNumberBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number background color."
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberBackgroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateNumberBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state number background color."
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberBackgroundColor(I)V

    .line 365
    return-void
.end method

.method public final StateNumberForegroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number foreground color."
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberForegroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateNumberForegroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state number foreground color."
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberForegroundColor(I)V

    .line 353
    return-void
.end method

.method public final StateNumberIsDescending(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the state number is in descending order."
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberIsDescending(Z)V

    .line 143
    return-void
.end method

.method public final StateNumberIsDescending()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberIsDescending()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateNumberTextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number text size."
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberTextSize()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateNumberTextSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "20.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state number text size."
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTextSize(F)V

    .line 269
    return-void
.end method

.method public final StateNumberTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTypefaceFile(Landroid/graphics/Typeface;)V

    .line 419
    return-void
.end method

.method public final StateNumberTypefaceImport(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font for state number typeface."
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 426
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTypefaceFile(Landroid/graphics/Typeface;)V

    .line 428
    :cond_0
    return-void
.end method

.method public final StateProgressBarHeight()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state progress bar height."
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateSize()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public final StateProgressBarHeight(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "40.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state progress bar height."
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateSize(F)V

    .line 257
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    move-object v0, v1

    return-object v0
.end method
