.class public final Landroidx/core/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityEventCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Landroidx/core/view/accessibility/AccessibilityRecordCompat;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v1, p1

    .local v1, "record":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getImpl()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 220
    return-void
.end method

.method public static asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    return-object v0
.end method

.method public static getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 346
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v1

    move v0, v1

    .line 348
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v0

    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 284
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v1

    move v0, v1

    .line 286
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v0

    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 310
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I

    move-result v1

    move v0, v1

    .line 312
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v0

    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move v1, p1

    .local v1, "index":I
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    move v0, v1

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    return v0
.end method

.method public static setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move v1, p1

    .local v1, "action":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 335
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move v1, p1

    .local v1, "changeTypes":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 265
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public static setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move v1, p1

    .local v1, "granularity":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 299
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 301
    :cond_0
    return-void
.end method
