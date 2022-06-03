.class public Lgnu/kawa/slib/swing;
.super Lgnu/expr/ModuleBody;
.source "swing.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/swing;

.field public static final Button:Lgnu/mapping/Location;

.field public static final Column:Lgnu/mapping/Location;

.field public static final Image:Lgnu/mapping/Location;

.field public static final Label:Lgnu/mapping/Location;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/expr/Keyword;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/expr/Keyword;

.field static final Lit4:Lgnu/expr/Keyword;

.field static final Lit5:Lgnu/expr/Keyword;

.field static final Lit6:Lgnu/expr/Keyword;

.field static final Lit7:Lgnu/expr/Keyword;

.field static final Lit8:Lgnu/expr/Keyword;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/mapping/Location;

.field public static final Text:Lgnu/mapping/Location;

.field public static final Window:Lgnu/mapping/Location;

.field public static final button:Lgnu/mapping/Location;

.field public static final color$Mnred:Ljava/awt/Color;

.field public static final composite$Mnsrc:Lgnu/expr/ModuleMethod;

.field public static final composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

.field public static final draw:Lgnu/expr/ModuleMethod;

.field public static final fill:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/mapping/Location;

.field public static final image$Mnread:Lgnu/mapping/Location;

.field public static final image$Mnwidth:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

.field static final loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

.field public static final make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

.field public static final menu:Lgnu/expr/ModuleMethod;

.field public static final menubar:Lgnu/expr/ModuleMethod;

.field public static final menuitem:Lgnu/expr/ModuleMethod;

.field public static final polygon:Lgnu/expr/ModuleMethod;

.field public static final rotation:Lgnu/expr/ModuleMethod;

.field public static final run$Mnapplication:Lgnu/mapping/Location;

.field public static final scroll:Lgnu/expr/ModuleMethod;

.field public static final set$Mncontent:Lgnu/mapping/Location;

.field public static final with$Mncomposite:Lgnu/expr/ModuleMethod;

.field public static final with$Mnpaint:Lgnu/expr/ModuleMethod;

.field public static final with$Mntransform:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "scroll"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "polygon"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "menuitem"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "menu"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "menubar"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "with-transform"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "rotation"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "composite-src"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "composite-src-over"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "with-composite"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "with-paint"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "draw"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "fill"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make-action-listener"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "gnu.kawa.models.WithComposite"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "<gnu.kawa.models.WithPaint>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "<gnu.kawa.models.DrawShape>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "<gnu.kawa.models.FillShape>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "h"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    const-string/jumbo v1, "w"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    const-string/jumbo v1, "accesskey"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    const-string/jumbo v1, "disabled"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    const-string/jumbo v1, "oncommand"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    const-string/jumbo v1, "default"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    const-string/jumbo v1, "image"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    const-string/jumbo v1, "label"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/swing;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/kawa/slib/swing;-><init>()V

    sput-object v1, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    sget-object v1, Lgnu/kawa/slib/swing;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/swing;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/swing;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/swing;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    .line 11
    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "button"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->button:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Button"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Button:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Image"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Image:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "image$Mnread"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnread:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "image$Mnwidth"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnwidth:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "image$Mnheight"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnheight:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Label"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Label:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Text"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Text:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Row"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Row:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Column"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Column:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "set$Mncontent"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->set$Mncontent:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "Window"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Window:Lgnu/mapping/Location;

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    const-string/jumbo v2, "run$Mnapplication"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->run$Mnapplication:Lgnu/mapping/Location;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/swing;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/swing;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->fill:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/swing;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->draw:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lgnu/kawa/slib/swing;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->with$Mnpaint:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lgnu/kawa/slib/swing;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->with$Mncomposite:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lgnu/kawa/slib/swing;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lgnu/kawa/slib/swing;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->composite$Mnsrc:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lgnu/kawa/slib/swing;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->rotation:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lgnu/kawa/slib/swing;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->with$Mntransform:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lgnu/kawa/slib/swing;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->menubar:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lgnu/kawa/slib/swing;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->menu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xe

    sget-object v5, Lgnu/kawa/slib/swing;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->menuitem:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xf

    sget-object v5, Lgnu/kawa/slib/swing;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->polygon:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x10

    sget-object v5, Lgnu/kawa/slib/swing;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/swing;->scroll:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static compositeSrc()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrc(F)Ljava/awt/Composite;
    .locals 3

    .prologue
    .line 37
    move v0, p0

    .local v0, "alpha":F
    sget v1, Ljava/awt/AlphaComposite;->SRC:I

    move v2, v0

    invoke-static {v1, v2}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "alpha":F
    return-object v0
.end method

.method public static compositeSrcOver()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrcOver(F)Ljava/awt/Composite;
    .locals 3

    .prologue
    .line 31
    move v0, p0

    .local v0, "alpha":F
    sget v1, Ljava/awt/AlphaComposite;->SRC_OVER:I

    move v2, v0

    invoke-static {v1, v2}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "alpha":F
    return-object v0
.end method

.method public static draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "shape":Ljava/awt/Shape;
    sget-object v1, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v2, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/models/Paintable;

    move-object v0, v1

    .end local v0    # "shape":Ljava/awt/Shape;
    return-object v0

    .restart local v0    # "shape":Ljava/awt/Shape;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v4, 0x16

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method public static fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 7

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "shape":Ljava/awt/Shape;
    sget-object v1, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v2, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/models/Paintable;

    move-object v0, v1

    .end local v0    # "shape":Ljava/awt/Shape;
    return-object v0

    .restart local v0    # "shape":Ljava/awt/Shape;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v4, 0x13

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "proc":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "proc":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs menu([Ljava/lang/Object;)Ljavax/swing/JMenu;
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v6, Ljavax/swing/JMenu;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavax/swing/JMenu;-><init>()V

    .line 130
    move-object v7, v0

    array-length v7, v7

    move v2, v7

    .local v2, "num$Mnargs":I
    move-object v1, v6

    .line 131
    .local v1, "menu":Ljavax/swing/JMenu;
    const/4 v6, 0x0

    move v3, v6

    .line 132
    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 133
    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 134
    .local v4, "arg":Ljava/lang/Object;
    move-object v6, v4

    sget-object v7, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .local v5, "x":Z
    move v6, v5

    if-eqz v6, :cond_1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 135
    :goto_2
    move-object v6, v1

    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    if-nez v8, :cond_2

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 134
    .end local v5    # "x":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .restart local v5    # "x":Z
    :cond_1
    move v6, v5

    if-eqz v6, :cond_3

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 140
    :cond_3
    move-object v6, v1

    move-object v7, v4

    check-cast v7, Ljavax/swing/JMenuItem;

    invoke-virtual {v6, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    move-result-object v6

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "x":Z
    :cond_4
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v5, Ljavax/swing/JMenuBar;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljavax/swing/JMenuBar;-><init>()V

    .line 117
    move-object v6, v0

    array-length v6, v6

    move v2, v6

    .local v2, "num$Mnargs":I
    move-object v1, v5

    .line 118
    .local v1, "menubar":Ljavax/swing/JMenuBar;
    const/4 v5, 0x0

    move v3, v5

    .line 119
    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 120
    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 122
    .local v4, "arg":Ljava/lang/Object;
    move-object v5, v1

    move-object v6, v4

    check-cast v6, Ljavax/swing/JMenu;

    invoke-virtual {v5, v6}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    move-result-object v5

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;
    .locals 13

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "argsArray":[Ljava/lang/Object;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    if-nez v9, :cond_3

    const/4 v8, 0x0

    :goto_0
    move-object v1, v8

    .local v1, "label":Ljava/lang/String;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .local v2, "image":Ljava/lang/Object;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .local v3, "default":Ljava/lang/Object;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .local v4, "oncommand":Ljava/lang/Object;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .local v5, "disabled":Ljava/lang/Object;
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 152
    .local v6, "accesskey":Ljava/lang/Object;
    new-instance v8, Ljavax/swing/JMenuItem;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavax/swing/JMenuItem;-><init>()V

    move-object v7, v8

    .line 154
    .local v7, "menuitem":Ljavax/swing/JMenuItem;
    move-object v8, v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_0

    .line 155
    move-object v8, v7

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    :cond_0
    move-object v8, v1

    const/4 v9, 0x0

    if-eq v8, v9, :cond_1

    .line 157
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    :cond_1
    move-object v8, v4

    const/4 v9, 0x0

    if-eq v8, v9, :cond_2

    .line 159
    move-object v8, v7

    move-object v9, v4

    invoke-static {v9}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 160
    :cond_2
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "argsArray":[Ljava/lang/Object;
    return-object v0

    .line 144
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "image":Ljava/lang/Object;
    .end local v3    # "default":Ljava/lang/Object;
    .end local v4    # "oncommand":Ljava/lang/Object;
    .end local v5    # "disabled":Ljava/lang/Object;
    .end local v6    # "accesskey":Ljava/lang/Object;
    .end local v7    # "menuitem":Ljavax/swing/JMenuItem;
    .restart local v0    # "argsArray":[Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static varargs polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "initial":Lgnu/math/Complex;
    move-object/from16 v1, p1

    .local v1, "more$Mnpoints":[Ljava/lang/Object;
    new-instance v7, Ljava/awt/geom/GeneralPath;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 166
    move-object v8, v1

    array-length v8, v8

    move v3, v8

    .local v3, "n$Mnpoints":I
    move-object v2, v7

    .line 167
    .local v2, "path":Ljava/awt/geom/GeneralPath;
    move-object v7, v2

    move-object v8, v0

    invoke-static {v8}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v8

    move-object v10, v0

    invoke-static {v10}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/awt/geom/GeneralPath;->moveTo(DD)V

    .line 169
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 173
    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v6, v8

    :try_start_0
    check-cast v7, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 174
    .local v5, "pt":Lgnu/math/Complex;
    move-object v7, v2

    move-object v8, v5

    invoke-static {v8}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v8

    move-object v10, v5

    invoke-static {v10}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/awt/geom/GeneralPath;->lineTo(DD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v5    # "pt":Lgnu/math/Complex;
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/awt/geom/GeneralPath;->closePath()V

    .line 172
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "initial":Lgnu/math/Complex;
    return-object v0

    .line 173
    .restart local v0    # "initial":Lgnu/math/Complex;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "pt"

    const/4 v11, -0x2

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public static rotation(D)Ljava/awt/geom/AffineTransform;
    .locals 4

    .prologue
    .line 43
    move-wide v0, p0

    .local v0, "theta":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "theta":D
    return-object v0
.end method

.method public static scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;
    .locals 14

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "contents":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7, v8, v9}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .local v2, "w":Ljava/lang/Object;
    move-object v6, v1

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7, v8, v9}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 178
    .local v3, "h":Ljava/lang/Object;
    move-object v6, v0

    instance-of v6, v6, Lgnu/kawa/models/Paintable;

    if-eqz v6, :cond_0

    .line 179
    new-instance v6, Lgnu/kawa/swingviews/SwingPaintable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v4, v9

    :try_start_0
    check-cast v8, Lgnu/kawa/models/Paintable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v7, v8}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    move-object v0, v6

    .line 180
    .end local v0    # "contents":Ljava/lang/Object;
    :cond_0
    new-instance v6, Ljavax/swing/JScrollPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v5, v9

    :try_start_1
    check-cast v8, Ljava/awt/Component;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {v7, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    move-object v4, v6

    .line 182
    .local v4, "scr":Ljavax/swing/JScrollPane;
    move-object v6, v4

    new-instance v7, Ljava/awt/Dimension;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v5, v10

    :try_start_2
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    move-object v10, v3

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v5, v11

    :try_start_3
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v6, v7}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 183
    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 179
    .end local v4    # "scr":Ljavax/swing/JScrollPane;
    .restart local v0    # "contents":Ljava/lang/Object;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "gnu.kawa.swingviews.SwingPaintable.<init>(gnu.kawa.models.Paintable)"

    const/4 v10, 0x1

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 181
    .end local v0    # "contents":Ljava/lang/Object;
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "javax.swing.JScrollPane.<init>(java.awt.Component)"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 182
    .restart local v4    # "scr":Ljavax/swing/JScrollPane;
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "java.awt.Dimension.<init>(int,int)"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "java.awt.Dimension.<init>(int,int)"

    const/4 v10, 0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static varargs withComposite([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "arguments":[Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v3, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    sget-object v4, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arguments":[Ljava/lang/Object;
    return-object v0

    .restart local v0    # "arguments":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v4, 0x1d

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method public static withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "paint":Ljava/awt/Color;
    move-object v1, p1

    .local v1, "pic":Lgnu/kawa/models/Paintable;
    sget-object v2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v3, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "paint":Ljava/awt/Color;
    return-object v0

    .restart local v0    # "paint":Ljava/awt/Color;
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v5, 0x1a

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2
.end method

.method public static withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "transform":Ljava/awt/geom/AffineTransform;
    move-object v1, p1

    .local v1, "pic":Lgnu/kawa/models/Paintable;
    new-instance v2, Lgnu/kawa/models/WithTransform;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    move-object v0, v2

    .end local v0    # "transform":Ljava/awt/geom/AffineTransform;
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 37
    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrcOver()Ljava/awt/Composite;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrc()Ljava/awt/Composite;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v2

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 43
    :pswitch_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    :goto_0
    return-object v1

    .line 13
    :pswitch_1
    move-object v4, v3

    invoke-static {v4}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 18
    :pswitch_2
    move-object v4, v3

    :try_start_0
    check-cast v4, Ljava/awt/Shape;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lgnu/kawa/slib/swing;->fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 21
    :pswitch_3
    move-object v4, v3

    :try_start_1
    check-cast v4, Ljava/awt/Shape;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4}, Lgnu/kawa/slib/swing;->draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 31
    :pswitch_4
    move-object v4, v3

    :try_start_2
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    invoke-static {v4}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 37
    :pswitch_5
    move-object v4, v3

    :try_start_3
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    invoke-static {v4}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 43
    :pswitch_6
    move-object v4, v3

    :try_start_4
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/kawa/slib/swing;->rotation(D)Ljava/awt/geom/AffineTransform;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 18
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "fill"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 21
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "draw"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 31
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "composite-src-over"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 37
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "composite-src"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 43
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "rotation"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 46
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 24
    :sswitch_0
    move-object v4, v2

    :try_start_0
    check-cast v4, Ljava/awt/Color;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    :try_start_1
    check-cast v5, Lgnu/kawa/models/Paintable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4, v5}, Lgnu/kawa/slib/swing;->withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 46
    :sswitch_1
    move-object v4, v2

    :try_start_2
    check-cast v4, Ljava/awt/geom/AffineTransform;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    :try_start_3
    check-cast v5, Lgnu/kawa/models/Paintable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4, v5}, Lgnu/kawa/slib/swing;->withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 24
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "with-paint"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 25
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "with-paint"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 46
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "with-transform"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 47
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "with-transform"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 177
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 28
    :pswitch_1
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/slib/swing;->withComposite([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 113
    :pswitch_2
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/slib/swing;->menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 126
    :pswitch_3
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/slib/swing;->menu([Ljava/lang/Object;)Ljavax/swing/JMenu;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 144
    :pswitch_4
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/slib/swing;->menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 162
    :pswitch_5
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_0
    check-cast v4, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_0

    invoke-static {v4, v5}, Lgnu/kawa/slib/swing;->polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v3

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_1

    .line 177
    :pswitch_6
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_1

    invoke-static {v4, v5}, Lgnu/kawa/slib/swing;->scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v3

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_2

    .line 162
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "polygon"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 31
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    .line 37
    :goto_0
    return v0

    :pswitch_1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 31
    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 13
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 43
    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 37
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 31
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 21
    :pswitch_4
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/awt/Shape;

    if-nez v6, :cond_0

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_0
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 18
    :pswitch_5
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/awt/Shape;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 13
    :pswitch_6
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 24
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 46
    :goto_0
    return v0

    :sswitch_0
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/awt/geom/AffineTransform;

    if-nez v7, :cond_0

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_0
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/models/Paintable;

    if-nez v7, :cond_1

    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    :cond_1
    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 24
    :sswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/awt/Color;

    if-nez v7, :cond_2

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_2
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/models/Paintable;

    if-nez v7, :cond_3

    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    :cond_3
    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 28
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 177
    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 162
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 144
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 126
    :pswitch_4
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 113
    :pswitch_5
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 28
    :pswitch_6
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/swing;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 13
    .local v2, "$result":Lgnu/lists/Consumer;
    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    sput-object v3, Lgnu/kawa/slib/swing;->color$Mnred:Ljava/awt/Color;

    .line 113
    return-void
.end method
