.class public Lcom/rey/torquetheme/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/rey/torquetheme/MainActivity;

.field private adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

.field private gv:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/rey/torquetheme/ListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/ListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/rey/torquetheme/ListFragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/rey/torquetheme/ListFragment;

    invoke-direct {v0}, Lcom/rey/torquetheme/ListFragment;-><init>()V

    .line 26
    .local v0, "fragment":Lcom/rey/torquetheme/ListFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/rey/torquetheme/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/rey/torquetheme/MainActivity;

    iput-object v1, p0, Lcom/rey/torquetheme/ListFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    .line 35
    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/rey/torquetheme/ListFragment;->gv:Landroid/widget/GridView;

    .line 36
    iget-object v1, p0, Lcom/rey/torquetheme/ListFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    invoke-virtual {v1}, Lcom/rey/torquetheme/MainActivity;->getImageAdapter()Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/rey/torquetheme/ListFragment;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    .line 37
    iget-object v1, p0, Lcom/rey/torquetheme/ListFragment;->gv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/rey/torquetheme/ListFragment;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    iget-object v1, p0, Lcom/rey/torquetheme/ListFragment;->gv:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rey/torquetheme/ListFragment;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-virtual {v1, p3}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->getFile(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "file":Ljava/lang/String;
    iget-object v1, p0, Lcom/rey/torquetheme/ListFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    iget-object v2, p0, Lcom/rey/torquetheme/ListFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    invoke-virtual {v2, v0}, Lcom/rey/torquetheme/MainActivity;->getDetailFragment(Ljava/lang/String;)Lcom/rey/torquetheme/DetailFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rey/torquetheme/MainActivity;->showDialog(Landroid/support/v4/app/Fragment;)V

    .line 48
    return-void
.end method
