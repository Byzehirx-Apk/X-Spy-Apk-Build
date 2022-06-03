.class public Lcom/google/appinventor/components/runtime/TimePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches  a popup dialog to allow the user to select a time.</p>"
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

.field private androidUIHandler:Landroid/os/Handler;

.field private dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

.field private wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 11

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    .line 43
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    .line 45
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    .line 151
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/TimePicker$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/TimePicker$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 57
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    .line 59
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    .line 60
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    .line 61
    move-object v2, v0

    new-instance v3, Landroid/app/TimePickerDialog;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    .line 64
    move-object v2, v0

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    iget v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    .line 65
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;I)I
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;I)I
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public AfterTimeSet()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a user has set the time in the popup dialog."
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AfterTimeSet"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 178
    return-void
.end method

.method public Hour()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The hour of the last time set using the time picker. The hour is in a 24 hour format. If the last time set was 11:53 pm, this property will return 23."
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move v0, v1

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The instant of the last time set using the time picker"
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    move-object v0, v1

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the TimePicker popup."
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/TimePicker;->click()V

    .line 135
    return-void
.end method

.method public Minute()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minute of the last time set using the time picker"
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    move v0, v1

    return v0
.end method

.method public SetTimeToDisplay(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time to be shown in the Time Picker popup. Current time is shown by default."
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    const/16 v4, 0x17

    if-le v3, v4, :cond_1

    .line 112
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const-string/jumbo v5, "SetTimeToDisplay"

    const/16 v6, 0x8fd

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_1
    move v3, v2

    if-ltz v3, :cond_2

    move v3, v2

    const/16 v4, 0x3b

    if-le v3, v4, :cond_3

    .line 114
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const-string/jumbo v5, "SetTimeToDisplay"

    const/16 v6, 0x8fe

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 117
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    .line 118
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    .line 120
    goto :goto_0
.end method

.method public SetTimeToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time from the instant to be shown in the Time Picker popup. Current time is shown by default."
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v3

    move v2, v3

    .line 126
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v3

    move v1, v3

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    move v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 128
    move v3, v2

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v3

    .line 129
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    .line 130
    return-void
.end method

.method public click()V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    if-nez v3, :cond_0

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 141
    move-object v1, v4

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v2, v3

    .line 142
    move-object v3, v1

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v1, v3

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    move v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 144
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/google/appinventor/components/runtime/TimePicker;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/TimePicker;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Calendar;

    .line 145
    .line 148
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/TimePickerDialog;

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->show()V

    .line 149
    return-void

    .line 146
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/TimePicker;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    goto :goto_0
.end method
