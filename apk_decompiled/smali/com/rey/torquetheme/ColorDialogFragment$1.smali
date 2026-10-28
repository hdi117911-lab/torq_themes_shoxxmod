.class Lcom/rey/torquetheme/ColorDialogFragment$1;
.super Ljava/lang/Object;
.source "ColorDialogFragment.java"

# interfaces
.implements Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/torquetheme/ColorDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/torquetheme/ColorDialogFragment;


# direct methods
.method constructor <init>(Lcom/rey/torquetheme/ColorDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rey/torquetheme/ColorDialogFragment$1;->this$0:Lcom/rey/torquetheme/ColorDialogFragment;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/rey/torquetheme/ColorDialogFragment$1;->this$0:Lcom/rey/torquetheme/ColorDialogFragment;

    invoke-static {v0, p1}, Lcom/rey/torquetheme/ColorDialogFragment;->access$0(Lcom/rey/torquetheme/ColorDialogFragment;I)V

    .line 79
    return-void
.end method
