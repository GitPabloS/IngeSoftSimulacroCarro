require "spec_helper"
require "CarSimulator"

RSpec.describe CarSimulator do
    it "El usuario define cantidad de filas y se muestra" do 
        carSimulator = CarSimulator.new
        tamFields = 5
        carSimulator.setSizeRows(tamFields)
        expect(carSimulator.getSizeRows).to eq(5)
    end
    it "El usuario define cantidad de columnas y se muestra" do 
        carSimulator = CarSimulator.new
        tamColums = 5
        carSimulator.setSizeColumns(tamColums)
        expect(carSimulator.getSizeColumns).to eq(5)
    end
    it "El usuario crea la matriz(terreno) en base a las medidas ya definidas y se muestra" do 
        carSimulator = CarSimulator.new
        expect(carSimulator.createMatrix).to eq([5,5])
    end
    it "El usuario ingresa la posicion inicial del auto y se muestra la posicion ingresada" do 
        carSimulator = CarSimulator.new
        posX = 1
        posY = 1
        expect(carSimulator.initializer(posX,posY)).to eq([1,1])
    end

    it "El usuario ingresa mal la posicion inicial del auto y se muestra un error" do 
        carSimulator = CarSimulator.new
        posX = 1
        posY = -1
        expect(carSimulator.initializer(posX,posY)).to eq('no se puede iniciar en esas coordenadas')
    end

    it "mover auto a la izquierda" do 
        carSimulator = CarSimulator.new
        step = "I"
        carSimulator.runSimulation(step)
        expect(carSimulator.getPosition).to eq([1,1])
    end
    it "mover auto a la derecha" do 
        carSimulator = CarSimulator.new
        step = "D"
        carSimulator.runSimulation(step)
        expect(carSimulator.getPosition).to eq([1,1])
    end
    it "mover auto a la frente" do 
        carSimulator = CarSimulator.new
        step = "F"
        carSimulator.runSimulation(step)
        expect(carSimulator.getPosition).to eq([1,2])
    end
    it "mover auto a la derecha" do 
        carSimulator = CarSimulator.new
        step = "D"
        carSimulator.runSimulation(step)
        expect(carSimulator.getPosition).to eq([1,2])
    end
    it "mover auto a la derecha" do 
        carSimulator = CarSimulator.new
        step = "D"
        carSimulator.runSimulation(step)
        expect(carSimulator.getPosition).to eq([1,2])
    end
    it "definir orientacion del auto" do 
        carSimulator = CarSimulator.new
        orientacion = "East"
        carSimulator.setOrientation(orientacion)
        expect(carSimulator.getOrientation).to eq("East")
    end
    it "definir orientacion erroena del auto" do 
        carSimulator = CarSimulator.new
        orientacion = "Westnotrh"
        carSimulator.setOrientation(orientacion)
        expect(carSimulator.getOrientation).to eq("comando invalido")
    end

    it "El usuario define cantidad de filas y se muestra mal" do 
        carSimulator = CarSimulator.new
        tamFields = -5
        carSimulator.setSizeRows(tamFields)
        expect(carSimulator.getSizeRows).to eq('no se pueden ingresar numeros negativos')
    end
    it "El usuario define cantidad de columnas y se muestra mal2" do 
        carSimulator = CarSimulator.new
        tamColums = 0
        carSimulator.setSizeColumns(tamColums)
        expect(carSimulator.getSizeColumns).to eq('no se pueden ingresar numeros negativos')
    end
    it "El usuario define cantidad de filas y se muestra mal" do 
        carSimulator = CarSimulator.new
        tamFields = 5
        carSimulator.setSizeRows(tamFields)
        expect(carSimulator.getSizeRows).to eq(5)
    end
    it "El usuario define cantidad de columnas y se muestra mal2" do 
        carSimulator = CarSimulator.new
        tamColums = 5
        carSimulator.setSizeColumns(tamColums)
        expect(carSimulator.getSizeColumns).to eq(5)
    end
    it "El usuario ingresa la posicion inicial del auto y se muestra la posicion ingresada" do 
        carSimulator = CarSimulator.new
        posX = 1
        posY = 1
        expect(carSimulator.initializer(posX,posY)).to eq([1,1])
    end
    it "El usuario define cantidad de columnas y se muestra mal2" do 
        carSimulator = CarSimulator.new
        orientacion = "East"
        carSimulator.setOrientation(orientacion)
        expect(carSimulator.runSimulationAux('F')).to eq('[2,1]')
    end
end