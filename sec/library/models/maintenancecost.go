package models

import (
	"sync"
	"time"

	"github.com/eaciit/orm"
)

type MaintenanceCost struct {
	sync.RWMutex
	orm.ModelBase           `bson:"-" json:"-"`
	Id                      string    `bson:"_id" json:"id"`
	EquipmentType           string    `bson:"EquipmentType" json:"EquipmentType"`
	EquipmentTypeDesc       string    `bson:"EquipmentTypeDesc" json:"EquipmentTypeDesc"`
	Equipment               string    `bson:"Equipment" json:"Equipment"`
	EquipmentDesc           string    `bson:"EquipmentDesc" json:"EquipmentDesc"`
	MaintenanceOrder        string    `bson:"MaintenanceOrder" json:"MaintenanceOrder"`
	MaintenanceOrderDesc    string    `bson:"MaintenanceOrderDesc" json:"MaintenanceOrderDesc"`
	MaintenanceActivityType string    `bson:"MaintActivityType" json:"MaintenanceActivityType"`
	OrderType               string    `bson:"OrderType" json:"OrderType"`
	OrderTypeDesc           string    `bson:"OrderTypeDesc" json:"OrderTypeDesc"`
	InternalLaborPlan       float64   `bson:"InternalLaborPlan" json:"InternalLaborPlan"`
	Period                  time.Time `bson:"Period" json:"Period"`
	Plant                   string    `bson:"Plant" json:"Plant"`
	InternalLaborActual     float64   `bson:"InternalLaborActual" json:"InternalLaborActual"`
	InternalMaterialPlan    float64   `bson:"InternalMaterialPlan" json:"InternalMaterialPlan"`
	InternalMaterialActual  float64   `bson:"InternalMaterialActual" json:"InternalMaterialActual"`
	DirectMaterialPlan      float64   `bson:"DirectMaterialPlan" json:"DirectMaterialPlan"`
	DirectMaterialActual    float64   `bson:"DirectMaterialActual" json:"DirectMaterialActual"`
	ExternalServicePlan     float64   `bson:"ExternalServicePlan" json:"ExternalServicePlan"`
	ExternalServiceActual   float64   `bson:"ExternalServiceActual" json:"ExternalServiceActual"`
	PeriodTotalPlan         float64   `bson:"PeriodTotalPlan" json:"PeriodTotalPlan"`
	PeriodTotalActual       float64   `bson:"PeriodTotalActual" json:"PeriodTotalActual"`
}

func (m *MaintenanceCost) TableName() string {
	return "MaintenanceCost"
}
