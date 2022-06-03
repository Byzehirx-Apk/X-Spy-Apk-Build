.class public Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;,
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;,
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;,
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final BOOLEAN_PROPERTY_IS_HEADING:I = 0x2

.field private static final BOOLEAN_PROPERTY_IS_SHOWING_HINT:I = 0x4

.field private static final BOOLEAN_PROPERTY_KEY:Ljava/lang/String; = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

.field private static final BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE:I = 0x1

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final HINT_TEXT_KEY:Ljava/lang/String; = "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field private static final PANE_TITLE_KEY:Ljava/lang/String; = "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

.field private static final ROLE_DESCRIPTION_KEY:Ljava/lang/String; = "AccessibilityNodeInfo.roleDescription"

.field private static final TOOLTIP_TEXT_KEY:Ljava/lang/String; = "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY"


# instance fields
.field private final mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mParentVirtualDescendantId:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 889
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 1320
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1321
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "info":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 889
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 1316
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1317
    return-void
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3500
    move v0, p0

    .local v0, "action":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 3538
    const-string/jumbo v1, "ACTION_UNKNOWN"

    move-object v0, v1

    .end local v0    # "action":I
    :goto_0
    return-object v0

    .line 3502
    .restart local v0    # "action":I
    :sswitch_0
    const-string/jumbo v1, "ACTION_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3504
    :sswitch_1
    const-string/jumbo v1, "ACTION_CLEAR_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3506
    :sswitch_2
    const-string/jumbo v1, "ACTION_SELECT"

    move-object v0, v1

    goto :goto_0

    .line 3508
    :sswitch_3
    const-string/jumbo v1, "ACTION_CLEAR_SELECTION"

    move-object v0, v1

    goto :goto_0

    .line 3510
    :sswitch_4
    const-string/jumbo v1, "ACTION_CLICK"

    move-object v0, v1

    goto :goto_0

    .line 3512
    :sswitch_5
    const-string/jumbo v1, "ACTION_LONG_CLICK"

    move-object v0, v1

    goto :goto_0

    .line 3514
    :sswitch_6
    const-string/jumbo v1, "ACTION_ACCESSIBILITY_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3516
    :sswitch_7
    const-string/jumbo v1, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3518
    :sswitch_8
    const-string/jumbo v1, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    move-object v0, v1

    goto :goto_0

    .line 3520
    :sswitch_9
    const-string/jumbo v1, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    move-object v0, v1

    goto :goto_0

    .line 3522
    :sswitch_a
    const-string/jumbo v1, "ACTION_NEXT_HTML_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 3524
    :sswitch_b
    const-string/jumbo v1, "ACTION_PREVIOUS_HTML_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 3526
    :sswitch_c
    const-string/jumbo v1, "ACTION_SCROLL_FORWARD"

    move-object v0, v1

    goto :goto_0

    .line 3528
    :sswitch_d
    const-string/jumbo v1, "ACTION_SCROLL_BACKWARD"

    move-object v0, v1

    goto :goto_0

    .line 3530
    :sswitch_e
    const-string/jumbo v1, "ACTION_CUT"

    move-object v0, v1

    goto :goto_0

    .line 3532
    :sswitch_f
    const-string/jumbo v1, "ACTION_COPY"

    move-object v0, v1

    goto :goto_0

    .line 3534
    :sswitch_10
    const-string/jumbo v1, "ACTION_PASTE"

    move-object v0, v1

    goto :goto_0

    .line 3536
    :sswitch_11
    const-string/jumbo v1, "ACTION_SET_SELECTION"

    move-object v0, v1

    goto :goto_0

    .line 3500
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .locals 6

    .prologue
    .line 3494
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "property":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 3495
    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 3496
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v3, v2

    const-string/jumbo v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v1

    and-int/2addr v3, v4

    move v4, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 1386
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "source":Landroid/view/View;
    move-object v1, v0

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "source":Landroid/view/View;
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "root":Landroid/view/View;
    move v1, p1

    .local v1, "virtualDescendantId":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1373
    move-object v2, v0

    move v3, v1

    .line 1374
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1373
    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 1376
    .end local v0    # "root":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "root":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 8

    .prologue
    .line 3484
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "property":I
    move v2, p2

    .local v2, "value":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v3, v5

    .line 3485
    .local v3, "extras":Landroid/os/Bundle;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 3486
    move-object v5, v3

    const-string/jumbo v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 3487
    .local v4, "booleanProperties":I
    move v5, v4

    move v6, v1

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v4, v5

    .line 3488
    move v5, v4

    move v6, v2

    if-eqz v6, :cond_1

    move v6, v1

    :goto_0
    or-int/2addr v5, v6

    move v4, v5

    .line 3489
    move-object v5, v3

    const-string/jumbo v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3491
    .end local v4    # "booleanProperties":I
    :cond_0
    return-void

    .line 3488
    .restart local v4    # "booleanProperties":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5
    .param p0    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v0, v1

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    return-object v0
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 1301
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 1303
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addAction(I)V
    .locals 4

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "action":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1611
    return-void
.end method

.method public addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .locals 4

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1626
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1628
    :cond_0
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1522
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 1523
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 1540
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1541
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 1543
    :cond_0
    return-void
.end method

.method public canOpenPopup()Z
    .locals 3

    .prologue
    .line 2751
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2752
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canOpenPopup()Z

    move-result v1

    move v0, v1

    .line 2754
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 3419
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 3420
    const/4 v3, 0x1

    move v0, v3

    .line 3436
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .line 3422
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 3423
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3425
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 3426
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3428
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v2, v3

    .line 3429
    .local v2, "other":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v3, :cond_3

    .line 3430
    move-object v3, v2

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_4

    .line 3431
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3433
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3434
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3436
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 1735
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 1736
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 1737
    .local v4, "infoCount":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 1738
    move-object v7, v3

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v6, v7

    .line 1739
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v7, v2

    move-object v8, v6

    invoke-static {v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1737
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1741
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2797
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "viewId":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_1

    .line 2798
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 2799
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 2800
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v5, v6

    .line 2801
    .local v5, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v6, v3

    move-object v7, v5

    invoke-static {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2802
    goto :goto_0

    .line 2803
    .end local v5    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .line 2805
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v2    # "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    :goto_1
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 1446
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "focus":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1447
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 1449
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public focusSearch(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "direction":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1469
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 1471
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getActionList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2493
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v6, 0x0

    move-object v1, v6

    .line 2494
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 2495
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v6

    move-object v1, v6

    .line 2497
    :cond_0
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 2498
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 2499
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 2500
    .local v3, "actionCount":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 2501
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 2502
    .local v5, "action":Ljava/lang/Object;
    move-object v6, v2

    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2500
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2504
    .end local v5    # "action":Ljava/lang/Object;
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .line 2506
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    .end local v3    # "actionCount":I
    .end local v4    # "i":I
    :goto_1
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public getActions()I
    .locals 2

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 1805
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1806
    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 1829
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1830
    return-void
.end method

.method public getChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 1507
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 1490
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2212
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getCollectionInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .locals 6

    .prologue
    .line 2413
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2414
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    move-object v1, v2

    .line 2415
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2416
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 2419
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getCollectionItemInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 6

    .prologue
    .line 2446
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2447
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    move-object v1, v2

    .line 2448
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2449
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 2452
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2260
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getDrawingOrder()I
    .locals 3

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2383
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getDrawingOrder()I

    move-result v1

    move v0, v1

    .line 2385
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 2631
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2632
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 2634
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2823
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2824
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 2826
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2577
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 2578
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 2582
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .line 2579
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 2580
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 2582
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getInputType()I
    .locals 3

    .prologue
    .line 2836
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2837
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v1

    move v0, v1

    .line 2839
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getLabelFor()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2682
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 2683
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 2685
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getLabeledBy()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2738
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 2739
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 2741
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getLiveRegion()I
    .locals 3

    .prologue
    .line 2345
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2346
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v1

    move v0, v1

    .line 2348
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getMaxTextLength()I
    .locals 3

    .prologue
    .line 2890
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2891
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result v1

    move v0, v1

    .line 2893
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getMovementGranularities()I
    .locals 3

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1714
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v1

    move v0, v1

    .line 1716
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2188
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getPaneTitle()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3237
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3238
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 3242
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .line 3239
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 3240
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3242
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getParent()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getRangeInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    .locals 6

    .prologue
    .line 2461
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2462
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    move-object v1, v2

    .line 2463
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2464
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 2467
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getRoleDescription()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3375
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 3376
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 3378
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2236
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 3

    .prologue
    .line 2935
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 2936
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result v1

    move v0, v1

    .line 2938
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 3

    .prologue
    .line 2922
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 2923
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v1

    move v0, v1

    .line 2925
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3181
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3182
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 3186
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .line 3183
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 3184
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3186
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getTraversalAfter()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 3017
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 3018
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 3020
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getTraversalBefore()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2952
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 2953
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 2955
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 2320
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2322
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getWindow()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 3078
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3079
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 3081
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getWindowId()I
    .locals 2

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3414
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 3

    .prologue
    .line 1980
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1981
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    move v0, v1

    .line 1983
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 1853
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isClickable()Z
    .locals 2

    .prologue
    .line 2035
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isContentInvalid()Z
    .locals 3

    .prologue
    .line 2534
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2535
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v1

    move v0, v1

    .line 2537
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isContextClickable()Z
    .locals 3

    .prologue
    .line 2547
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2548
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v1

    move v0, v1

    .line 2550
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isDismissable()Z
    .locals 3

    .prologue
    .line 3091
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 3092
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v1

    move v0, v1

    .line 3094
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 3

    .prologue
    .line 3120
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 3121
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    move v0, v1

    .line 3123
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 2083
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    .prologue
    .line 1901
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 1925
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isHeading()Z
    .locals 4

    .prologue
    .line 3326
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3327
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isHeading()Z

    move-result v2

    move v0, v2

    .line 3331
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .local v1, "collectionItemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :goto_0
    return v0

    .line 3329
    .end local v1    # "collectionItemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBooleanProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 3330
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v2

    move-object v1, v2

    .line 3331
    .restart local v1    # "collectionItemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isHeading()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isImportantForAccessibility()Z
    .locals 3

    .prologue
    .line 2158
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2159
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v1

    move v0, v1

    .line 2161
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    .line 2059
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isMultiLine()Z
    .locals 3

    .prologue
    .line 3151
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 3152
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v1

    move v0, v1

    .line 3154
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isPassword()Z
    .locals 2

    .prologue
    .line 2107
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isScreenReaderFocusable()Z
    .locals 3

    .prologue
    .line 3256
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3257
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScreenReaderFocusable()Z

    move-result v1

    move v0, v1

    .line 3259
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBooleanProperty(I)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 2

    .prologue
    .line 2131
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 2011
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public isShowingHintText()Z
    .locals 3

    .prologue
    .line 3290
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3291
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v1

    move v0, v1

    .line 3293
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBooleanProperty(I)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public isVisibleToUser()Z
    .locals 3

    .prologue
    .line 1949
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1950
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    move v0, v1

    .line 1952
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public performAction(I)Z
    .locals 4

    .prologue
    .line 1665
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "action":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 1682
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "action":I
    move-object v2, p2

    .local v2, "arguments":Landroid/os/Bundle;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1683
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 1685
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 2286
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2287
    return-void
.end method

.method public refresh()Z
    .locals 3

    .prologue
    .line 3363
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 3364
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    move-result v1

    move v0, v1

    .line 3366
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .locals 4

    .prologue
    .line 1645
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1646
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    move v0, v2

    .line 1648
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeChild(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1560
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1561
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .line 1563
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1579
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v3

    move v0, v3

    .line 1581
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public setAccessibilityFocused(Z)V
    .locals 4

    .prologue
    .line 2000
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "focused":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 2001
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2003
    :cond_0
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1821
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 1844
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1845
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 4

    .prologue
    .line 2769
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "opensPopup":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2770
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 2772
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 4

    .prologue
    .line 1868
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1869
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 1892
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1893
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2227
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "className":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2228
    return-void
.end method

.method public setClickable(Z)V
    .locals 4

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "clickable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2051
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2423
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "collectionInfo":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2424
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2429
    :cond_0
    return-void

    .line 2424
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    goto :goto_0
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2432
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "collectionItemInfo":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2433
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2437
    :cond_0
    return-void

    .line 2433
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2276
    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 4

    .prologue
    .line 2522
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "contentInvalid":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2523
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 2525
    :cond_0
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 4

    .prologue
    .line 2566
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "contextClickable":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 2567
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 2569
    :cond_0
    return-void
.end method

.method public setDismissable(Z)V
    .locals 4

    .prologue
    .line 3109
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "dismissable":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3110
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 3112
    :cond_0
    return-void
.end method

.method public setDrawingOrder(I)V
    .locals 4

    .prologue
    .line 2401
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "drawingOrderInParent":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 2402
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDrawingOrder(I)V

    .line 2404
    :cond_0
    return-void
.end method

.method public setEditable(Z)V
    .locals 4

    .prologue
    .line 3140
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "editable":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 3141
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 3143
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 2098
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2099
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2620
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "error":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2621
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 2623
    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 4

    .prologue
    .line 1916
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "focusable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1917
    return-void
.end method

.method public setFocused(Z)V
    .locals 4

    .prologue
    .line 1940
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "focused":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 1941
    return-void
.end method

.method public setHeading(Z)V
    .locals 5

    .prologue
    .line 3346
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "isHeading":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3347
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 3351
    :goto_0
    return-void

    .line 3349
    :cond_0
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2599
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "hintText":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 2600
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 2604
    :cond_0
    :goto_0
    return-void

    .line 2601
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2602
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setImportantForAccessibility(Z)V
    .locals 4

    .prologue
    .line 2177
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "important":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 2178
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 2180
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 4

    .prologue
    .line 2857
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "inputType":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2858
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 2860
    :cond_0
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2645
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "labeled":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 2646
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 2648
    :cond_0
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 2665
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 2666
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    .line 2668
    :cond_0
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2696
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "label":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 2697
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 2699
    :cond_0
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 2721
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 2722
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    .line 2724
    :cond_0
    return-void
.end method

.method public setLiveRegion(I)V
    .locals 4

    .prologue
    .line 2365
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "mode":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2366
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 2368
    :cond_0
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 4

    .prologue
    .line 2074
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "longClickable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2075
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 4

    .prologue
    .line 2878
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "max":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 2879
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 2881
    :cond_0
    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 4

    .prologue
    .line 1702
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "granularities":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1703
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1705
    :cond_0
    return-void
.end method

.method public setMultiLine(Z)V
    .locals 4

    .prologue
    .line 3169
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "multiLine":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3170
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 3172
    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2203
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2204
    return-void
.end method

.method public setPaneTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3223
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "paneTitle":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 3224
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 3228
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3226
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setParent(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 1771
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 1793
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 1794
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1795
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 1797
    :cond_0
    return-void
.end method

.method public setPassword(Z)V
    .locals 4

    .prologue
    .line 2122
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "password":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 2123
    return-void
.end method

.method public setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V
    .locals 4

    .prologue
    .line 2481
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "rangeInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 2482
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2484
    :cond_0
    return-void
.end method

.method public setRoleDescription(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3407
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "roleDescription":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3408
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "AccessibilityNodeInfo.roleDescription"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3410
    :cond_0
    return-void
.end method

.method public setScreenReaderFocusable(Z)V
    .locals 5

    .prologue
    .line 3275
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "screenReaderFocusable":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3276
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    .line 3280
    :goto_0
    return-void

    .line 3278
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 4

    .prologue
    .line 2146
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "scrollable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2147
    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    .prologue
    .line 2026
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "selected":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2027
    return-void
.end method

.method public setShowingHintText(Z)V
    .locals 5

    .prologue
    .line 3310
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "showingHintText":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 3311
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    .line 3315
    :goto_0
    return-void

    .line 3313
    :cond_0
    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    goto :goto_0
.end method

.method public setSource(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1406
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "source":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 1407
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 1429
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1430
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1432
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2251
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    return-void
.end method

.method public setTextSelection(II)V
    .locals 6

    .prologue
    .line 2911
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 2912
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 2914
    :cond_0
    return-void
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3203
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 3204
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3208
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 3206
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 3039
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 3040
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 3042
    :cond_0
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 3065
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_0

    .line 3066
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    .line 3068
    :cond_0
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2974
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 2975
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 2977
    :cond_0
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 3001
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_0

    .line 3002
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 3004
    :cond_0
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2301
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, p1

    .local v1, "viewId":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 2302
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 2304
    :cond_0
    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 4

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move v1, p1

    .local v1, "visibleToUser":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1970
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1972
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 3441
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 3442
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v5, v1

    move-object v6, v0

    invoke-super {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3444
    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v5

    .line 3446
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3447
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "; boundsInParent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3449
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3450
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "; boundsInScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3452
    move-object v5, v1

    const-string/jumbo v6, "; packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3453
    move-object v5, v1

    const-string/jumbo v6, "; className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3454
    move-object v5, v1

    const-string/jumbo v6, "; text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3455
    move-object v5, v1

    const-string/jumbo v6, "; contentDescription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3456
    move-object v5, v1

    const-string/jumbo v6, "; viewId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3458
    move-object v5, v1

    const-string/jumbo v6, "; checkable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3459
    move-object v5, v1

    const-string/jumbo v6, "; checked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3460
    move-object v5, v1

    const-string/jumbo v6, "; focusable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3461
    move-object v5, v1

    const-string/jumbo v6, "; focused: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3462
    move-object v5, v1

    const-string/jumbo v6, "; selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3463
    move-object v5, v1

    const-string/jumbo v6, "; clickable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3464
    move-object v5, v1

    const-string/jumbo v6, "; longClickable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3465
    move-object v5, v1

    const-string/jumbo v6, "; enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3466
    move-object v5, v1

    const-string/jumbo v6, "; password: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3467
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "; scrollable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3469
    move-object v5, v1

    const-string/jumbo v6, "; ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3470
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v5

    move v3, v5

    .local v3, "actionBits":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 3471
    const/4 v5, 0x1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    shl-int/2addr v5, v6

    move v4, v5

    .line 3472
    .local v4, "action":I
    move v5, v3

    move v6, v4

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 3473
    move-object v5, v1

    move v6, v4

    invoke-static {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3474
    move v5, v3

    if-eqz v5, :cond_0

    .line 3475
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3477
    :cond_0
    goto :goto_0

    .line 3478
    .end local v4    # "action":I
    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3480
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method

.method public unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 1337
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    return-object v0
.end method
