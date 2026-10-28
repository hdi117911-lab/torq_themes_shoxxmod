.class public Lcom/rey/torquetheme/ColorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ColorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;
    }
.end annotation


# static fields
.field private static final ARG_COLOR:Ljava/lang/String; = "COLOR"

.field private static final ARG_ID:Ljava/lang/String; = "ID"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/rey/torquetheme/ColorDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/ColorDialogFragment;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rey/torquetheme/ColorDialogFragment;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/rey/torquetheme/ColorDialogFragment;->mColor:I

    return-void
.end method

.method private bt_cancelClicked()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;->confirm(Lcom/rey/torquetheme/ColorDialogFragment;Z)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->dismiss()V

    .line 121
    return-void
.end method

.method private bt_okClicked()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;->confirm(Lcom/rey/torquetheme/ColorDialogFragment;Z)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->dismiss()V

    .line 114
    return-void
.end method

.method public static newInstance(ILjava/lang/String;I)Lcom/rey/torquetheme/ColorDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 36
    new-instance v1, Lcom/rey/torquetheme/ColorDialogFragment;

    invoke-direct {v1}, Lcom/rey/torquetheme/ColorDialogFragment;-><init>()V

    .line 38
    .local v1, "f":Lcom/rey/torquetheme/ColorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "MESSAGE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "ID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "COLOR"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/rey/torquetheme/ColorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->mColor:I

    return v0
.end method

.method public getDialogId()I
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-direct {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->bt_okClicked()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->bt_cancelClicked()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f08000c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 50
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 60
    .local v4, "tv_text":Landroid/widget/TextView;
    const v6, 0x7f08000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, "bt_ok":Landroid/widget/Button;
    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "bt_cancel":Landroid/widget/Button;
    const v6, 0x7f080008

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 63
    .local v2, "cp":Lcom/larswerkman/holocolorpicker/ColorPicker;
    const v6, 0x7f080009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/larswerkman/holocolorpicker/SVBar;

    .line 65
    .local v3, "svb":Lcom/larswerkman/holocolorpicker/SVBar;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "MESSAGE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/rey/torquetheme/ColorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "COLOR"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/rey/torquetheme/ColorDialogFragment;->mColor:I

    .line 70
    invoke-virtual {v2, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->addSVBar(Lcom/larswerkman/holocolorpicker/SVBar;)V

    .line 71
    iget v6, p0, Lcom/rey/torquetheme/ColorDialogFragment;->mColor:I

    invoke-virtual {v2, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    .line 72
    iget v6, p0, Lcom/rey/torquetheme/ColorDialogFragment;->mColor:I

    invoke-virtual {v2, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    .line 74
    new-instance v6, Lcom/rey/torquetheme/ColorDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/rey/torquetheme/ColorDialogFragment$1;-><init>(Lcom/rey/torquetheme/ColorDialogFragment;)V

    invoke-virtual {v2, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOnColorChangedListener(Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;)V

    .line 82
    return-object v5
.end method

.method public setListener(Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment;->listener:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method
