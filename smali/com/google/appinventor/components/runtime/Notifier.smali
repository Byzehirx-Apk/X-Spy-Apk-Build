.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Notifier component displays alert dialogs, messages, and temporary alerts, and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: displays a message which the user must dismiss by pressing a button.</li><li> ShowChooseDialog: displays a message two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowPasswordDialog: lets the user enter password in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays a temporary  alert that goes away by itself after a short time.</li><li> ShowProgressDialog: displays an alert with a loading spinner that cannot be dismissed by the user. It can only be dismissed by using the DismissProgressDialog block.</li><li> CustomMessageDialog: New version to display dialogs with icon and in fullscreen mode.</li><li> CustomChooseDialog: New version to display choose dialogs with icon and in fullscreen mode.<li> LightTheme: To display the dialogs in a light or dark theme.</li><li> ShowLightbox: Displays a png or gif file from assets or from web url in a dialog.</li><li> ShowLinearProgress: Shows a progress dialog with a horizontal progress bar.</li><li> ShowSpinningProgress: Shows a spinning progress dialog.</li><li> UpdateProgress: Change the current value of the linear progress dialog.</li><li> ShowRadioListDialog: Shows a radio list dialog with a list of options.</li><li> ShowCheckboxListDialog: Shows a picker dialog with a list of options.</li><li> ShowListPicker: Shows a list picker dialog.</li><li> ShowTextInputDialog: Show a text input dialog.</li><li> ShowImageDialog: Show a image dialog. Animation types like \"*.gif\" are not supported.</li><li> ShowNumberPicker: Shows a number picker dialog that enables the user to select a number from a predefined range.</li><li> ShowWordPicker: Shows a word picker dialog that enables the user to select a number from a predefined word.</li><li> DismissProgressDialog: Dismisses the progress dialog displayed by ShowProgressDialog.</li><li> DismissSpinningProgress: Dismisses the progress dialog displayed by ShowSpinningProgress.</li><li> DismissLinearProgress: Dismisses the progress dialog displayed by ShowLinearProgress.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li><li>The messages in the dialogs can be formatted using the following HTML tags:&lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, &lt;br&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;em&gt;, &lt;small&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;tt&gt;. &lt;u&gt;</li><li>You can also use the font tag to specify color, for example, &lt;font color=\"blue\"&gt;.  Some of the available color names are aqua, black, blue, fuchsia, green, grey, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow</li></ul>"
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0xb
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "glide.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private DIALOG_DARK:I

.field private DIALOG_DARK_FULLSCREEN:I

.field private DIALOG_DARK_RADIO:I

.field private DIALOG_LIGHT:I

.field private DIALOG_LIGHT_FULLSCREEN:I

.field private DIALOG_LIGHT_RADIO:I

.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private checkTheme:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentSelection:I

.field private currentTheme:I

.field private customDialog:Landroid/app/AlertDialog;

.field private dimAmount:F

.field private final handler:Landroid/os/Handler;

.field private isRepl:Z

.field private linkify:Z

.field private messageTypeface:I

.field private messagefontTypefacePath:Ljava/lang/String;

.field private msgTheme:I

.field private notifierLength:I

.field private progress:Landroid/app/ProgressDialog;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressl:Landroid/app/ProgressDialog;

.field private radioTheme:I

.field private selectedNumber:I

.field private selectedWord:Ljava/lang/String;

.field private textColor:I

.field private tglTheme:I

.field private theme:Z

.field private titleColor:I

.field private titleTypeface:I

.field private titlefontTypefacePath:Ljava/lang/String;

.field private txtTheme:I

.field private useBackgroundColor:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 110
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    .line 111
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    .line 113
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    .line 115
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    .line 116
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    .line 117
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    .line 119
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 120
    move-object v2, v0

    const v3, -0xbbbbbc

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 121
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 124
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    .line 125
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    .line 127
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    .line 128
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    .line 139
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    .line 141
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    .line 143
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    .line 147
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Theme.AppCompat.Light.Dialog.Alert"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    .line 148
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Theme.AppCompat.Light.NoActionBar"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    .line 149
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Theme.AppCompat.Light.DialogWhenLarge"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_RADIO:I

    .line 150
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "AppTheme.Dialog.Alert"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK:I

    .line 151
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Theme.AppCompat.NoActionBar"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    .line 152
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Theme.AppCompat.DialogWhenLarge"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_RADIO:I

    .line 154
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->LightTheme(Z)V

    .line 155
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->UseBackgroundColor(Z)V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public static aboutThisApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 1130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v0

    const-string/jumbo v10, "Theme.AppCompat.Light.Dialog.Alert"

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    :goto_0
    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v0, v6

    .line 1131
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1132
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1134
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1135
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1136
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_1
    move-object v6, v0

    const/4 v7, -0x3

    move-object v8, v3

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$27;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/Notifier$27;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1143
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1146
    move-object v6, v0

    const v7, 0x102000b

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1147
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .line 1152
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1153
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1155
    :cond_2
    return-void

    .line 1130
    :cond_3
    move-object v9, v0

    const-string/jumbo v10, "AppTheme.Dialog.Alert"

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1149
    const-string/jumbo v6, "Notifier"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->toastNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Notifier;->lightbox(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Notifier;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 14

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/appinventor/components/runtime/Notifier;->linearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->spinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;
    .locals 20

    .prologue
    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/google/appinventor/components/runtime/Notifier;->radioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Notifier;Landroid/app/Dialog;Z)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Notifier;)I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    move v0, v1

    return v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Notifier;I)I
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    move v0, v2

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Notifier;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->hideKeyboardHelper(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Notifier;)I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Notifier;I)I
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Notifier;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method private dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    .line 1404
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1405
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1407
    :cond_0
    return-void
.end method

.method private hideKeyboardHelper(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1480
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1481
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 1482
    move-object v2, v4

    if-eqz v3, :cond_0

    .line 1483
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    .line 1486
    :cond_0
    return-void
.end method

.method private iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 1489
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1490
    const/4 v2, 0x0

    move-object v0, v2

    .line 1495
    :goto_0
    return-object v0

    .line 1493
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 1495
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private lightbox(ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 466
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v4, Landroid/app/Dialog;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const v7, 0x1030008

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 467
    move-object v3, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v4

    .line 468
    move-object v4, v3

    new-instance v5, Lcom/google/appinventor/components/runtime/Notifier$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 475
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 476
    new-instance v4, Landroid/widget/ImageView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v1, v4

    .line 477
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v5, v2

    move-object v6, v1

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 478
    move-object v4, v3

    move-object v5, v1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 482
    return-void
.end method

.method private linearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 13

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_0

    .line 506
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Notifier;->DismissSpinningProgress()V

    .line 508
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_1

    .line 509
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Notifier;->DismissLinearProgress()V

    .line 511
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_2

    .line 512
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 515
    :cond_2
    move-object v7, v0

    new-instance v8, Landroid/app/ProgressDialog;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    invoke-direct {v9, v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    .line 516
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 517
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 518
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 520
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 521
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move-object v8, v1

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 523
    :cond_3
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 524
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move-object v8, v2

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 527
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 528
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 530
    move v7, v4

    if-eqz v7, :cond_5

    .line 531
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 532
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 535
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 536
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$4;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 543
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 544
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 545
    return-void
.end method

.method private static linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1371
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v0

    if-eqz v4, :cond_0

    .line 1372
    new-instance v4, Landroid/widget/TextView;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    .line 1373
    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v4

    move v3, v4

    .line 1374
    move-object v4, v0

    move v5, v3

    move v9, v5

    move v5, v9

    move v6, v9

    move v7, v3

    move v9, v7

    move v7, v9

    move v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1375
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->linkifyMessage(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    move-object v4, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1377
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1378
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1380
    :cond_0
    return-void
.end method

.method private messageFontHelper(Landroid/widget/TextView;)V
    .locals 7

    .prologue
    .line 1463
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1464
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 1468
    goto :goto_0
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1171
    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 1178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 1179
    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 13

    .prologue
    .line 1182
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string/jumbo v6, "Notifier"

    const-string/jumbo v7, "One button alert "

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1183
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v0, v6

    .line 1184
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1185
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1187
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1188
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1189
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1191
    :cond_1
    move-object v6, v0

    const/4 v7, -0x3

    move-object v8, v3

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$28;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/Notifier$28;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1200
    move v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 1201
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1202
    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 1175
    return-void
.end method

.method private progressDialogHelper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1471
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 1472
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 1474
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v5, v2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 1476
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1477
    return-void
.end method

.method private radioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 625
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v10, v11, :cond_2

    .line 626
    move v10, v9

    if-eqz v10, :cond_1

    .line 627
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_RADIO:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    .line 639
    :goto_0
    add-int/lit8 v7, v7, -0x1

    .line 640
    move-object v10, v0

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    .line 642
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v13, v0

    iget v13, v13, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    invoke-direct {v11, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v9, v10

    .line 643
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 644
    move-object v10, v9

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 645
    move-object v10, v9

    move-object v11, v2

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    move-object v11, v3

    move v12, v7

    new-instance v13, Lcom/google/appinventor/components/runtime/Notifier$7;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    .line 646
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 653
    move-object v10, v9

    move-object v11, v4

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$8;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    move v15, v1

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/Notifier$8;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 660
    move v10, v5

    if-eqz v10, :cond_0

    .line 661
    move-object v10, v9

    move-object v11, v6

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$9;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    move v15, v1

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/Notifier$9;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 668
    :cond_0
    move-object v10, v9

    move-object v11, v0

    move-object v12, v8

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 669
    move-object v10, v9

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    move-object v0, v10

    return-object v0

    .line 629
    :cond_1
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto/16 :goto_0

    .line 632
    :cond_2
    move v10, v9

    if-eqz v10, :cond_3

    .line 633
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_RADIO:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto/16 :goto_0

    .line 635
    :cond_3
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto/16 :goto_0
.end method

.method private setDialogHelper(Landroid/app/Dialog;Z)V
    .locals 9

    .prologue
    .line 1410
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    if-eqz v3, :cond_0

    .line 1412
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1413
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .line 1420
    :cond_0
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1421
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 1425
    :cond_1
    move-object v3, v1

    const v4, 0x102000b

    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 1426
    move-object v2, v4

    if-eqz v3, :cond_2

    .line 1427
    move-object v3, v2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1431
    .line 1434
    :cond_2
    :goto_1
    move-object v3, v1

    const v4, 0x102000b

    :try_start_2
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 1435
    move-object v2, v4

    if-eqz v3, :cond_3

    .line 1436
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Notifier;->messageFontHelper(Landroid/widget/TextView;)V

    .line 1437
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1441
    .line 1444
    :cond_3
    :goto_2
    move-object v3, v1

    move-object v4, v0

    :try_start_3
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "alertTitle"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 1445
    move-object v2, v4

    if-eqz v3, :cond_4

    .line 1446
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Notifier;->titleFontHelper(Landroid/widget/TextView;)V

    .line 1447
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1451
    .line 1452
    :cond_4
    :goto_3
    return-void

    .line 1415
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1416
    const-string/jumbo v3, "Notifier"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 1429
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1430
    const-string/jumbo v3, "Notifier"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 1439
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1440
    const-string/jumbo v3, "Notifier"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 1449
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 1450
    const-string/jumbo v3, "Notifier"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1452
    goto :goto_3
.end method

.method private spinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 573
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Notifier;->DismissSpinningProgress()V

    .line 575
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_1

    .line 576
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Notifier;->DismissLinearProgress()V

    .line 578
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_2

    .line 579
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 582
    :cond_2
    move-object v5, v0

    new-instance v6, Landroid/app/ProgressDialog;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    invoke-direct {v7, v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    .line 583
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 584
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 585
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 586
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 588
    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v5, v6, :cond_5

    .line 589
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 590
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 597
    :cond_3
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 598
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    move-object v6, v2

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 601
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 602
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 603
    return-void

    .line 593
    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 594
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15

    .prologue
    .line 1299
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v5, v6

    .line 1300
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1301
    move-object v6, v5

    move-object v7, v2

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1303
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1304
    move-object v6, v5

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1307
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move-object v7, v5

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 1310
    new-instance v6, Landroid/widget/EditText;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v1, v6

    .line 1311
    move v6, v4

    if-eqz v6, :cond_2

    .line 1312
    move-object v6, v1

    const/16 v7, 0x81

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1314
    :cond_2
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1316
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1317
    move-object v6, v5

    const/4 v7, -0x1

    const-string/jumbo v8, "OK"

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$36;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$36;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1326
    move v6, v3

    if-eqz v6, :cond_3

    .line 1327
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const/high16 v7, 0x1040000

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1328
    move-object v6, v5

    const/4 v7, -0x2

    move-object v8, v2

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$37;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Notifier$37;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1337
    :cond_3
    move-object v6, v5

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1338
    return-void
.end method

.method private titleFontHelper(Landroid/widget/TextView;)V
    .locals 7

    .prologue
    .line 1455
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 1460
    :goto_0
    return-void

    .line 1458
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 1460
    goto :goto_0
.end method

.method private toastNow(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1383
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

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1384
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

    move-object v1, v3

    .line 1388
    const/high16 v3, 0x42480000    # 50.0f

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v2, v3

    .line 1390
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 1391
    move-object v1, v4

    const/16 v4, 0x51

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1394
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 1395
    move-object v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1396
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    .line 1400
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1401
    return-void

    .line 1397
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1398
    const-string/jumbo v3, "Notifier"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public final AfterChoosing(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his selection."
    .end annotation

    .prologue
    .line 1356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterChoosing"

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

    .line 1357
    return-void
.end method

.method public final AfterMessageDialog(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user clicked on a button from the \"Show Custom Message Dialog\". Use the \"title\" response to know which dialog the user has clicked."
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterMessageDialog"

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

    .line 223
    return-void
.end method

.method public final AfterTextInput(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his text input in the \"Show Text Dialog\"."
    .end annotation

    .prologue
    .line 1342
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterTextInput"

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

    .line 1343
    return-void
.end method

.method public final BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

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
        description = "Specifies the background color for alerts (not dialogs)."
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 351
    return-void
.end method

.method public final CheckboxSelection(ILcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after user has finished selecting items from the Checkbox picker. Returns a list of indices of the selected items in the order of selection. Returns a list having -1 if cancel was pressed."
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "CheckboxSelection"

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

    .line 746
    return-void
.end method

.method public final CreateCustomDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show whatever you want in a dialog. You can use as example arrangements, or images or whatever you want. Your chosen layout will be then removed from the screen and only visible in custom dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color. Please make sure the layout you want to use is visible."
    .end annotation

    .prologue
    .line 1061
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v7, v6, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 1063
    move-object v6, v0

    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    .line 1065
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1066
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1070
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1071
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    move-object v8, v3

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$25;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$25;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1079
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1080
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x2

    move-object v8, v4

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$26;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$26;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1089
    :cond_2
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    .line 1090
    move-object v1, v7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1091
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .line 1095
    :goto_0
    return-void

    .line 1092
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1093
    const-string/jumbo v6, "Notifier"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1095
    goto :goto_0
.end method

.method public final CustomChooseDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 29
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the GotCustomChooseDialog event.  The \"choice\" parameter to GotCustomChooseDialog will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color. Use the \'Show Custom Dialog\' block to the show the created custom dialog. The added component must be visible on screen. After you used this block here it will be removed automatic from screen and will be only visible again after you have shown the custom dialog."
    .end annotation

    .prologue
    .line 243
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, v1

    move-object/from16 v28, v11

    move-object/from16 v11, v28

    move-object/from16 v12, v28

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    new-instance v21, Lcom/google/appinventor/components/runtime/Notifier$12;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v25}, Lcom/google/appinventor/components/runtime/Notifier$12;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    new-instance v22, Lcom/google/appinventor/components/runtime/Notifier$23;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v26}, Lcom/google/appinventor/components/runtime/Notifier$23;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    new-instance v23, Lcom/google/appinventor/components/runtime/Notifier$34;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v27, v7

    invoke-direct/range {v24 .. v27}, Lcom/google/appinventor/components/runtime/Notifier$34;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move/from16 v24, v0

    invoke-virtual/range {v11 .. v24}, Lcom/google/appinventor/components/runtime/Notifier;->customChoose(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 260
    return-void
.end method

.method public final CustomDialogSelection(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has pressed a button from the custom dialog. It returns then the text of the button that was pressed."
    .end annotation

    .prologue
    .line 1100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "CustomDialogSelection"

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

    .line 1101
    return-void
.end method

.method public final CustomMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a Message Dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/google/appinventor/components/runtime/Notifier;->customMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public final DimAmount()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    move v0, v1

    return v0
.end method

.method public final DimAmount(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the amount of dim behind the dialog window. Use \'0.0\' for no dim and \'1.0\' for full dim."
    .end annotation

    .prologue
    .line 1121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    .line 1122
    return-void
.end method

.method public final DismissCustomDialog()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to dismiss the created custom dialog.the custom dialog."
    .end annotation

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1047
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1049
    :cond_0
    return-void
.end method

.method public final DismissLinearProgress()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed LinearProgress box"
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    .line 172
    return-void
.end method

.method public final DismissProgressDialog()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed ProgressDialog box"
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    .line 162
    return-void
.end method

.method public final DismissSpinningProgress()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed SpinningProgress box"
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    .line 167
    return-void
.end method

.method public final GotCustomChooseDialog(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his selection in the CustomChooseDialog."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotCustomChooseDialog"

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

    .line 228
    return-void
.end method

.method public final GotTextInputFromDialog(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his text input in the \"Show Text Input Dialog\"."
    .end annotation

    .prologue
    .line 882
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotTextInputFromDialog"

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

    .line 883
    return-void
.end method

.method public final ImageDialogClosed(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has watched the image dialog."
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ImageDialogClosed"

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

    .line 921
    return-void
.end method

.method public final LightTheme(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current theme"
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 443
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    .line 447
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->theme:Z

    .line 448
    return-void

    .line 445
    :cond_0
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    goto :goto_0
.end method

.method public final LightTheme()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current theme"
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->theme:Z

    move v0, v1

    return v0
.end method

.method public final LightboxClosed(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have closed the Lightbox."
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LightboxClosed"

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

    .line 487
    return-void
.end method

.method public final LinearProgressDismissed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the linear progress dialog was dismissed."
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LinearProgressDismissed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 551
    return-void
.end method

.method public final Linkify(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true will attempt to make text clickable where possible; e.g. hyperlinks, phone numbers. Can not be used for Progress Dialogs. "
    .end annotation

    .prologue
    .line 1362
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    .line 1363
    return-void
.end method

.method public final Linkify()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns status of Linkify property"
    .end annotation

    .prologue
    .line 1367
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move v0, v1

    return v0
.end method

.method public final ListPickerSelection(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the picked list selection from the List Picker."
    .end annotation

    .prologue
    .line 788
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "ListPickerSelection"

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

    .line 789
    return-void
.end method

.method public final LogError(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an error message to the Android system log. See the Google Android documentation for how to access the log."
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Notifier"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 426
    return-void
.end method

.method public final LogInfo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an information message to the Android log."
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Notifier"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 437
    return-void
.end method

.method public final LogWarning(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes a warning message to the Android log. See the Google Android documentation for how to access the log."
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Notifier"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 432
    return-void
.end method

.method public final NotifierLength()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "specifies the length of time that the alert is shown -- either \"short\" or \"long\"."
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    move v0, v1

    return v0
.end method

.method public final NotifierLength(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "toast_length"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 338
    return-void
.end method

.method public final NumberPickerSelection(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has selected a number from the number picker dialog."
    .end annotation

    .prologue
    .line 976
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "NumberPickerSelection"

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

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 977
    return-void
.end method

.method public final RadioSelection(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when user has selected an option from the radio button picker. Outputs the index of the selected item. Returns -1 if cancel was pressed."
    .end annotation

    .prologue
    .line 676
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "RadioSelection"

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

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 677
    return-void
.end method

.method public final ShowAlert(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a alert \"toast\" message."
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$41;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Notifier$41;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 330
    return-void
.end method

.method public final ShowCheckboxListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a picker dialog with a list of options of whichmore than one can be chosen. Invokes the \'AfterMultiSelection\' event. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 688
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object v11, v0

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v10, v11, :cond_2

    .line 689
    move v10, v8

    if-eqz v10, :cond_1

    .line 690
    move-object v10, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 702
    :goto_0
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 703
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 705
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v13, v0

    iget v13, v13, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v11, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v11, v2

    .line 706
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    move-object v11, v3

    const/4 v12, 0x0

    new-instance v13, Lcom/google/appinventor/components/runtime/Notifier$11;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v0

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/Notifier$11;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/util/ArrayList;)V

    .line 707
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    move-object v11, v4

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$10;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move-object v15, v9

    move/from16 v16, v1

    invoke-direct/range {v13 .. v16}, Lcom/google/appinventor/components/runtime/Notifier$10;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/util/ArrayList;I)V

    .line 716
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    move-object v2, v10

    .line 724
    move v10, v6

    if-eqz v10, :cond_0

    .line 725
    move-object v10, v2

    move-object v11, v5

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$13;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    move v15, v1

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/Notifier$13;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 733
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    move-object v1, v10

    .line 734
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 736
    move-object v10, v2

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 737
    move-object v10, v2

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    .line 738
    move-object v10, v0

    move-object v11, v1

    move v12, v8

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 739
    return-void

    .line 692
    :cond_1
    move-object v10, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto/16 :goto_0

    .line 695
    :cond_2
    move v10, v8

    if-eqz v10, :cond_3

    .line 696
    move-object v10, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto/16 :goto_0

    .line 698
    :cond_3
    move-object v10, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v11, v10, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto/16 :goto_0
.end method

.method public final ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the AfterChoosing event.  The \"choice\" parameter to AfterChoosing will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed."
    .end annotation

    .prologue
    .line 1210
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v1

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    new-instance v14, Lcom/google/appinventor/components/runtime/Notifier$29;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Lcom/google/appinventor/components/runtime/Notifier$29;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v15, Lcom/google/appinventor/components/runtime/Notifier$30;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/google/appinventor/components/runtime/Notifier$30;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v16, Lcom/google/appinventor/components/runtime/Notifier$31;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/Notifier$31;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move/from16 v17, v0

    invoke-virtual/range {v7 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 1227
    return-void
.end method

.method public final ShowCustomDialog()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the custom dialog. Dont forget that you have first to create the custom dialog."
    .end annotation

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1038
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1039
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 1041
    :cond_0
    return-void
.end method

.method public final ShowImageDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a image dialog. Animation types like \"*.gif\" are not supported. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v7, v6, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 894
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v5, v6

    .line 896
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 897
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 901
    :goto_0
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 902
    move-object v6, v5

    const/4 v7, -0x1

    move-object v8, v4

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$17;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$17;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 909
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 910
    new-instance v6, Landroid/widget/ImageView;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v1, v6

    .line 911
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v7, v3

    move-object v8, v1

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 912
    move-object v6, v5

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 914
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 915
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 916
    return-void

    .line 899
    :cond_1
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    move-result v6

    goto :goto_0
.end method

.method public final ShowLightbox(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays a lightbox. You can use images like \"*.png\" or \"*,gif\" from assets folder or from a web url."
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$42;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier$42;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 463
    return-void
.end method

.method public final ShowLinearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a progress dialog with a horizontal progress bar. Can be dismissed by user if \'cancelable\' is set to true. If indeterminate is true, maxValue and the \'UpdateProgress\' method will have no effect. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$3;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v7

    .line 502
    return-void
.end method

.method public final ShowListPicker(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a list picker dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v7, v8, :cond_2

    .line 753
    move v7, v5

    if-eqz v7, :cond_1

    .line 754
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    .line 766
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v6, v7

    .line 767
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 768
    move-object v7, v6

    move-object v8, v2

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 770
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 772
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 773
    move-object v7, v6

    move-object v8, v2

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$14;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/Notifier$14;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I[Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 779
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 781
    move-object v7, v6

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    .line 782
    move-object v1, v8

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 783
    move-object v7, v0

    move-object v8, v1

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 784
    return-void

    .line 756
    :cond_1
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0

    .line 759
    :cond_2
    move v7, v5

    if-eqz v7, :cond_3

    .line 760
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0

    .line 762
    :cond_3
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0
.end method

.method public final ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a Message Dialog."
    .end annotation

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1164
    return-void
.end method

.method public final ShowNumberPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a number picker dialog that enables the user to select a number from a predefined range. You can use the \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 928
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    .line 929
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    move-object v8, v9

    .line 931
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 932
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 934
    :cond_0
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 936
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 937
    const-string/jumbo v9, "OK"

    move-object v3, v9

    .line 939
    :cond_1
    move-object v9, v8

    const/4 v10, -0x1

    move-object v11, v3

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$18;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    move v15, v1

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/Notifier$18;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 946
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 947
    const-string/jumbo v9, "Close"

    move-object v4, v9

    .line 949
    :cond_2
    move-object v9, v8

    const/4 v10, -0x2

    move-object v11, v4

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$19;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/Notifier$19;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 956
    new-instance v9, Landroid/widget/NumberPicker;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 957
    move-object v1, v10

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 958
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 959
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 960
    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 961
    move-object v9, v1

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$20;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$20;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 969
    move-object v9, v8

    move-object v10, v1

    const/16 v11, 0x1e

    const/16 v12, 0x1e

    const/16 v13, 0x1e

    const/16 v14, 0x1e

    invoke-virtual/range {v9 .. v14}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 970
    move-object v9, v8

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 971
    move-object v9, v0

    move-object v10, v8

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 972
    return-void
.end method

.method public final ShowPasswordDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter password (input is masked), after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering password will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the entered password, or \"Cancel\" if CANCEL button was pressed."
    .end annotation

    .prologue
    .line 1295
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1296
    return-void
.end method

.method public final ShowProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with an optional title and message (use empty strings if they are not wanted). This dialog box contains a spinning artifact to indicate that the program is working. It cannot be canceled by the user but must be dismissed by the App Inventor Program by using the DismissProgressDialog block."
    .end annotation

    .prologue
    .line 1351
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Notifier;->progressDialogHelper(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public final ShowRadioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V
    .locals 24
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a radio list dialog with a list of options of which only one can be chosen. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 611
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v11, Lcom/google/appinventor/components/runtime/Notifier$6;

    move-object/from16 v23, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v23

    move-object v13, v0

    move v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    invoke-direct/range {v12 .. v22}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v10

    .line 619
    return-void
.end method

.method public final ShowSpinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a spinning progress dialog which can be dismissed by the user if \'cancelable\' is set to true. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/google/appinventor/components/runtime/Notifier$5;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 569
    return-void
.end method

.method public final ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter text, after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering text will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the text that was entered, or \"Cancel\" if the CANCEL button was pressed."
    .end annotation

    .prologue
    .line 1276
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1277
    return-void
.end method

.method public final ShowTextInputDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;II)V
    .locals 25
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a text input dialog. Possible input types are: \"1= Normal text\", \"2= Password text\", \"3= Person name\", \"4= Email adress\", \"5|6= Number\", \"7= Password number\" or \"8= datetime\". You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 802
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object v15, v1

    iget v15, v15, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 803
    move v15, v7

    if-eqz v15, :cond_3

    .line 804
    move-object v15, v1

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    .line 815
    :goto_0
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object v14, v15

    .line 816
    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 817
    move-object v15, v14

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 821
    :cond_0
    new-instance v15, Landroid/widget/EditText;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v3, v15

    .line 823
    move v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 825
    move v15, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 826
    move-object v15, v3

    const/16 v16, 0x81

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    .line 841
    :goto_1
    move-object v15, v4

    if-eqz v15, :cond_1

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 842
    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_1
    move-object v15, v6

    if-eqz v15, :cond_2

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 845
    move-object v15, v3

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 847
    :cond_2
    move-object v15, v3

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setTextColor(I)V

    .line 848
    move-object v15, v3

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 849
    move-object v15, v14

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 852
    move-object v15, v14

    const/16 v16, -0x1

    move-object/from16 v17, v10

    new-instance v18, Lcom/google/appinventor/components/runtime/Notifier$15;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v22, v2

    invoke-direct/range {v19 .. v22}, Lcom/google/appinventor/components/runtime/Notifier$15;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;I)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 861
    move v15, v8

    if-eqz v15, :cond_d

    .line 862
    move-object v15, v14

    const/16 v16, -0x2

    move-object/from16 v17, v11

    new-instance v18, Lcom/google/appinventor/components/runtime/Notifier$16;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v22, v2

    move-object/from16 v23, v11

    invoke-direct/range {v19 .. v23}, Lcom/google/appinventor/components/runtime/Notifier$16;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;ILjava/lang/String;)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 871
    move-object v15, v14

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 875
    :goto_2
    move-object v15, v14

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 876
    move-object v15, v14

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 877
    move-object v15, v1

    move-object/from16 v16, v14

    move/from16 v17, v7

    invoke-direct/range {v15 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 878
    return-void

    .line 806
    :cond_3
    move-object v15, v1

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto/16 :goto_0

    .line 809
    :cond_4
    move v15, v7

    if-eqz v15, :cond_5

    .line 810
    move-object v15, v1

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto/16 :goto_0

    .line 812
    :cond_5
    move-object v15, v1

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto/16 :goto_0

    .line 827
    :cond_6
    move v15, v9

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 828
    move-object v15, v3

    const/16 v16, 0x61

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 829
    :cond_7
    move v15, v9

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 830
    move-object v15, v3

    const/16 v16, 0x21

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 831
    :cond_8
    move v15, v9

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move v15, v9

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 832
    :cond_9
    move-object v15, v3

    const/16 v16, 0x3002

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 833
    :cond_a
    move v15, v9

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 834
    move-object v15, v3

    const/16 v16, 0x3012

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 835
    :cond_b
    move v15, v9

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 836
    move-object v15, v3

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 838
    :cond_c
    move-object v15, v3

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 873
    :cond_d
    move-object v15, v14

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto/16 :goto_2
.end method

.method public final ShowWordPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a word picker dialog that enables the user to select a number from a predefined word. You can use the \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .prologue
    .line 983
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 984
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    move-object v6, v7

    .line 986
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 987
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 989
    :cond_0
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 991
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 992
    const-string/jumbo v7, "OK"

    move-object v3, v7

    .line 994
    :cond_1
    move-object v7, v6

    const/4 v8, -0x1

    move-object v9, v3

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$21;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move v13, v1

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/Notifier$21;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1001
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1002
    const-string/jumbo v7, "Close"

    move-object v4, v7

    .line 1004
    :cond_2
    move-object v7, v6

    const/4 v8, -0x2

    move-object v9, v4

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$22;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/Notifier$22;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1011
    new-instance v7, Landroid/widget/NumberPicker;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    .line 1012
    move-object v1, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1013
    move-object v7, v1

    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1014
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1015
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1016
    move-object v7, v1

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$24;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/Notifier$24;-><init>(Lcom/google/appinventor/components/runtime/Notifier;[Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 1024
    move-object v7, v6

    move-object v8, v1

    const/16 v9, 0x1e

    const/16 v10, 0x1e

    const/16 v11, 0x1e

    const/16 v12, 0x1e

    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1025
    move-object v7, v6

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1026
    move-object v7, v0

    move-object v8, v6

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 1027
    return-void
.end method

.method public final TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for alerts or for dialogs message."
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    move v0, v1

    return v0
.end method

.method public final TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 382
    return-void
.end method

.method public final TextFontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    move v0, v1

    return v0
.end method

.method public final TextFontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    .line 414
    return-void
.end method

.method public final TextFontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public final TitleColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the title text color for dialogs."
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    move v0, v1

    return v0
.end method

.method public final TitleColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    .line 369
    return-void
.end method

.method public final TitleFontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    move v0, v1

    return v0
.end method

.method public final TitleFontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    .line 395
    return-void
.end method

.method public final TitleFontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public final UpdateProgress(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current value of the linear progress dialog. Has no effect if \"indeterminate\" is set to true."
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 557
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 559
    :cond_0
    return-void
.end method

.method public final UseBackgroundColor(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the dialog will use the color from the \"Background Color\"-option. Else it will use the theme (light or dark)."
    .end annotation

    .prologue
    .line 1108
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    .line 1109
    return-void
.end method

.method public final UseBackgroundColor()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1113
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    move v0, v1

    return v0
.end method

.method public final WordPickerSelection(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has selected a word from the word picker dialog."
    .end annotation

    .prologue
    .line 1031
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "WordPickerSelection"

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

    .line 1032
    return-void
.end method

.method public final customChoose(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 23

    .prologue
    .line 268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v1

    iget v15, v15, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object/from16 v16, v2

    const-string/jumbo v17, "Theme.AppCompat.Light.Dialog.Alert"

    invoke-static/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 269
    move v15, v10

    if-eqz v15, :cond_3

    .line 270
    move-object v15, v1

    move-object/from16 v16, v2

    const-string/jumbo v17, "Theme.AppCompat.Light.NoActionBar"

    invoke-static/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    .line 282
    :goto_0
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object v2, v15

    .line 283
    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 284
    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 288
    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 289
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    :cond_1
    move v15, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 294
    move-object v15, v2

    const/16 v16, -0x1

    move-object/from16 v17, v5

    new-instance v18, Lcom/google/appinventor/components/runtime/Notifier$38;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v1

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v21}, Lcom/google/appinventor/components/runtime/Notifier$38;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    move-object v15, v2

    const/16 v16, -0x3

    move-object/from16 v17, v6

    new-instance v18, Lcom/google/appinventor/components/runtime/Notifier$39;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v1

    move-object/from16 v21, v12

    invoke-direct/range {v19 .. v21}, Lcom/google/appinventor/components/runtime/Notifier$39;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 309
    move v15, v9

    if-eqz v15, :cond_2

    .line 310
    move-object v15, v2

    const/16 v16, -0x2

    move-object/from16 v17, v7

    new-instance v18, Lcom/google/appinventor/components/runtime/Notifier$40;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v1

    move-object/from16 v21, v13

    invoke-direct/range {v19 .. v21}, Lcom/google/appinventor/components/runtime/Notifier$40;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    :cond_2
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    move-object v15, v2

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 320
    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v10

    invoke-direct/range {v15 .. v17}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 321
    return-void

    .line 272
    :cond_3
    move-object v15, v1

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto/16 :goto_0

    .line 275
    :cond_4
    move v15, v10

    if-eqz v15, :cond_5

    .line 276
    move-object v15, v1

    move-object/from16 v16, v2

    const-string/jumbo v17, "Theme.AppCompat.NoActionBar"

    invoke-static/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto/16 :goto_0

    .line 278
    :cond_5
    move-object v15, v1

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto/16 :goto_0
.end method

.method public final customMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .prologue
    .line 182
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v7, v8, :cond_3

    .line 183
    move v7, v6

    if-eqz v7, :cond_2

    .line 184
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    .line 196
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    move-object v1, v7

    .line 197
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 198
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 201
    move-object v7, v1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 204
    move-object v7, v1

    move-object v8, v2

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move-object v8, v1

    move-object v9, v2

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 209
    move-object v7, v1

    const/4 v8, -0x3

    move-object v9, v4

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    move-object v7, v1

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 216
    move-object v7, v0

    move-object v8, v1

    move v9, v6

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    .line 217
    return-void

    .line 186
    :cond_2
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 189
    :cond_3
    move v7, v6

    if-eqz v7, :cond_4

    .line 190
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 192
    :cond_4
    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v8, v7, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0
.end method

.method public final twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 20

    .prologue
    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    const-string/jumbo v12, "Notifier"

    const-string/jumbo v13, "ShowChooseDialog: "

    move-object v14, v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1233
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v1

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    move-object v11, v12

    .line 1234
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1235
    move-object v12, v11

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1237
    :cond_0
    move-object v12, v11

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1238
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1239
    move-object v12, v11

    move-object v13, v2

    invoke-static {v13}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_1
    move v12, v10

    move-object v13, v11

    move-object v14, v2

    invoke-static {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 1244
    move-object v12, v11

    const/4 v13, -0x1

    move-object v14, v4

    new-instance v15, Lcom/google/appinventor/components/runtime/Notifier$32;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v18}, Lcom/google/appinventor/components/runtime/Notifier$32;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1250
    move-object v12, v11

    const/4 v13, -0x3

    move-object v14, v5

    new-instance v15, Lcom/google/appinventor/components/runtime/Notifier$33;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    invoke-direct/range {v16 .. v18}, Lcom/google/appinventor/components/runtime/Notifier$33;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1258
    move v12, v6

    if-eqz v12, :cond_2

    .line 1259
    move-object v12, v1

    const/high16 v13, 0x1040000

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v1, v12

    .line 1260
    move-object v12, v11

    const/4 v13, -0x2

    move-object v14, v1

    new-instance v15, Lcom/google/appinventor/components/runtime/Notifier$35;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lcom/google/appinventor/components/runtime/Notifier$35;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1267
    :cond_2
    move-object v12, v11

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 1268
    return-void
.end method
