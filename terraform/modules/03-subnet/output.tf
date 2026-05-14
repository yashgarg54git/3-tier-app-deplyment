output "subnet_ids" {
    value = { for s, subnet in azurerm_subnet.snet : s => subnet.id }
  
}