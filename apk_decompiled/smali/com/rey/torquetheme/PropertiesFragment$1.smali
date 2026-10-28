.class Lcom/rey/torquetheme/PropertiesFragment$1;
.super Ljava/lang/Object;
.source "PropertiesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/torquetheme/PropertiesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/torquetheme/PropertiesFragment;


# direct methods
.method constructor <init>(Lcom/rey/torquetheme/PropertiesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rey/torquetheme/PropertiesFragment$1;->this$0:Lcom/rey/torquetheme/PropertiesFragment;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/rey/torquetheme/PropertiesFragment$1;->this$0:Lcom/rey/torquetheme/PropertiesFragment;

    invoke-static {v0, p2}, Lcom/rey/torquetheme/PropertiesFragment;->access$0(Lcom/rey/torquetheme/PropertiesFragment;Z)V

    .line 122
    return-void
.end method
