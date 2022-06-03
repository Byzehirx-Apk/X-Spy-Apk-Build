.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    helpUrl = "https://docs.kodular.io/components/user-interface/textbox/"
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

.field private bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

.field private f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

.field private nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Z

.field private plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

.field private vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Landroidx/appcompat/widget/AppCompatEditText;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    .line 81
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/TextBox;->HighlightColor(I)V

    .line 93
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 95
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/TextBox;->InputType(I)V

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public final ErrorText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the error text."
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final ErrorText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the error text message."
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public final HideKeyboard()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 215
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    .line 217
    return-void
.end method

.method public final HighlightColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the highlighted text."
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    move v0, v1

    return v0
.end method

.method public final HighlightColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->vzOZHmUO5BPgEzqFqapthv9IfOCdoiue7DhwcposBCrplFafOlnwvaDCI1FzofZg:I

    .line 326
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 327
    return-void
.end method

.method public final InputType()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The input type you want for this TextBox."
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    move v0, v1

    return v0
.end method

.method public final InputType(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "input_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 201
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 204
    :goto_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:I

    .line 205
    return-void

    .line 171
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 172
    goto :goto_0

    .line 174
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x61

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 178
    goto :goto_0

    .line 180
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    goto :goto_0

    .line 183
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 184
    goto :goto_0

    .line 186
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x3012

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    goto :goto_0

    .line 189
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 190
    goto :goto_0

    .line 192
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    goto :goto_0

    .line 195
    :pswitch_8
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 196
    goto :goto_0

    .line 198
    :pswitch_9
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 199
    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final MaxLines(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2147483647"
        editorType = "non_negative_integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 255
    return-void
.end method

.method public final MultiLine(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final MultiLine()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Z

    move v0, v1

    return v0
.end method

.method public final NumbersOnly(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 149
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Z

    .line 150
    return-void

    .line 147
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const v3, 0x20001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public final NumbersOnly()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:Z

    move v0, v1

    return v0
.end method

.method public final ReadOnly(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBox;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    .line 272
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 273
    return-void

    .line 272
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final ReadOnly()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is true."
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    move v0, v1

    return v0
.end method

.method public final ShowError()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an error message next to the textbox."
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBox;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method
